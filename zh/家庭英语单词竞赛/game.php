<?php
header('Content-Type: application/json');
date_default_timezone_set('Asia/Shanghai');

$rawInput = file_get_contents('php://input');

$params = json_decode($rawInput, true); // 将 JSON 数据解析为 PHP 数组

$host = '数据库地址';
$dbname = '数据库名'; 
$user = '数据库用户名'; 
$password = '数据库密码'; 

// 创建PDO实例并连接数据库
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $password);
    // 设置PDO错误模式为异常
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "数据库连接失败: " . $e->getMessage();
    exit;
}

$response = array('resCode'=>200,'data'=> NULL);

$act_type = $params['act_type'];
if ($act_type == "word"){
    $sql = "select id,word, tips from clk_word order by views asc limit 5";
    $result = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);

    $randomWord = $result[array_rand($result)];
    $response['data'] = $randomWord;

    // 更新该词条的 views 字段加1
    $updateSql = "UPDATE clk_word SET views = views + 1 WHERE id = :id";
    $stmt = $pdo->prepare($updateSql);
    $stmt->execute(['id' => $randomWord['id']]);

}elseif ($act_type == "add"){
    $word = $params['word'];
    $tips = $params['tips'];
    $insertSql = "insert into clk_word(word,tips) value(:word,:tips)";
    $stmt = $pdo->prepare($insertSql);
    $stmt->execute(['word' => $word,'tips'=>$tips]);
    $response['resCode'] = 200;
}

echo json_encode($response);


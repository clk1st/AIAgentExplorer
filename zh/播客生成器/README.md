# 播客生成器项目

该项目是一个自动化的播客生成器，利用 OpenAI 的文本到语音 (TTS) 技术，将预定义的对话内容转换成语音播客。

## 功能

- **文本到语音转换**：使用 OpenAI 的 TTS API，将对话内容转换为语音。
- **多发言者支持**：项目支持根据发言者角色使用不同的语音。
- **音频合并**：将语音片段组合成一个完整的播客音频文件。

## 系统要求

- Python 3.9 或以上

## 环境配置

1. 安装必要的依赖库：

   ```bash
   pip install openai pydub python-dotenv
   ```

2. 配置环境变量：

   创建一个 `config.env` 文件，并添加你的 OpenAI API 密钥：

   ```
   OPENAI_API_KEY=your_api_key_here
   ```

### 安装 FFmpeg

FFmpeg 是用于音频处理的必备工具。

#### macOS

使用 Homebrew 在 macOS 上安装 FFmpeg：

```bash
brew install ffmpeg
```

#### Windows

在 Windows 上安装 FFmpeg：

1. 下载 FFmpeg 的二进制文件：[FFmpeg 下载链接](https://ffmpeg.org/download.html)。
2. 解压下载的文件，将路径添加到环境变量中：
   - 右键点击“此电脑”，选择“属性”。
   - 选择“高级系统设置”。
   - 点击“环境变量”并在“系统变量”部分找到或添加`Path`。
   - 将 FFmpeg 的 `bin` 文件夹路径添加到 `Path` 中。

## 使用指南

1. **更新对话内容和输出目录：**

   在脚本中，编辑 `content` 列表以更新对话内容。并将 `output_dir` 改为您自己的目录路径，例如：

   ```python
   output_dir = "/path/to/your/directory/audio/"
   ```

2. **音频输出：**

   完整的播客音频文件将保存在指定的输出目录中，您可以自定义文件名。

## 配置选项

- **模型选择**：
  - `model`: 使用的 TTS 模型，默认为 `'tts-1'`。
- **声音设定**：
  - `voice_a`: 主持人的声音，默认为 `'nova'`。
  - `voice_b`: 受访者的声音，默认为 `'onyx'`。

## 联系信息

如有问题或建议，请随时通过以下方式联系：
- 电子邮件: [ryanyang5@gmail.com](mailto:ryanyang5@gmail.com)
- 微信: ryan_dream
- Twitter: [x.com/yangyc666](https://x.com/yangyc666)


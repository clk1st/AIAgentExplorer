# Podcast Generator Project

This project is an automated podcast generator that utilizes OpenAI's Text-to-Speech (TTS) technology to convert predefined dialogue content into audio podcasts.

## Features

- **Text-to-Speech Conversion**: Use OpenAI's TTS API to convert dialogue content into speech.
- **Multi-speaker Support**: The project supports using different voices for different speaker roles.
- **Audio Merging**: Combine audio segments into a complete podcast audio file.

## System Requirements

- Python 3.9 or above

## Environment Setup

1. Install the necessary dependencies:

   ```bash
   pip install openai pydub python-dotenv
   ```

2. Configure environment variables:

   Create a `config.env` file and add your OpenAI API key:

   ```
   OPENAI_API_KEY=your_api_key_here
   ```

### Install FFmpeg

FFmpeg is essential for audio processing.

#### macOS

Install FFmpeg on macOS using Homebrew:

```bash
brew install ffmpeg
```

#### Windows

Install FFmpeg on Windows:

1. Download the FFmpeg binary files: [FFmpeg Download Link](https://ffmpeg.org/download.html).
2. Extract the downloaded files and add the path to the environment variables:
   - Right-click on "This PC" and select "Properties".
   - Choose "Advanced system settings".
   - Click on "Environment Variables" and find or add `Path` in the system variables section.
   - Add the path to the `bin` folder of FFmpeg to `Path`.

## Usage Guide

1. **Update Dialogue Content and Output Directory:**

   Edit the `content` list in the script to update dialogue content. Change `output_dir` to your own directory path, for example:

   ```python
   output_dir = "/path/to/your/directory/audio/"
   ```

2. **Audio Output:**

   The complete podcast audio file will be saved in the specified output directory, and you can customize the filename.

## Configuration Options

- **Model Selection**:
  - `model`: The TTS model used, default is `'tts-1'`.
- **Voice Settings**:
  - `voice_a`: The host's voice, default is `'nova'`.
  - `voice_b`: The interviewee's voice, default is `'onyx'`.

## Contact Information

For any questions or suggestions, feel free to contact via:
- Email: [ryanyang5@gmail.com](mailto:ryanyang5@gmail.com)
- WeChat: ryan_dream
- Twitter: [x.com/yangyc666](https://x.com/yangyc666)


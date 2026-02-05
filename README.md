# Terminal YouTube Player

**High-efficiency CLI utility for YouTube audio streaming and extraction**  
A minimal Bash wrapper around yt-dlp and mpv optimized for fast terminal-based music playback and high-quality MP3 downloading.

## Core Functionality

- **Real-time audio streaming**  
  Direct audio-only playback using mpv (video stream is completely bypassed)

- **Server-side search + instant playback**  
  Uses yt-dlp `ytsearch1:` prefix → always takes the best matching first result

- **High-quality MP3 extraction**  
  Downloads with `--audio-quality 0` (best available quality) + automatic conversion to MP3

- **Continuous interactive loop**  
  Clean command-line interface with very simple input syntax

## Technical Stack

| Component   | Purpose                                      |
|-------------|----------------------------------------------|
| `yt-dlp`    | Search, metadata extraction, stream download |
| `mpv`       | Low-latency audio-only playback              |
| `ffmpeg`    | Backend transcoding (MP3 conversion)         |
| `bash`      | POSIX-compliant control & user interaction   |

## Installation

# 1. Clone the project
git clone https://github.com/subodh2003/terminal-youtube-player.git
cd terminal-youtube-player

# 2. Give execution permission
chmod 755 yt-terminal-player.sh

# 3. Run
./yt-terminal-player.sh

# Important Implementation Flags
--no-video
--force-window=no
--ytdl=yes

# Planned / Possible Improvements
- Better error handling (timeouts, no results, network issues)
- Multiple search result selection
- Simple queue / playlist support
- Recently played history
- Colored output & better UX feedback
- Optional bitrate selection for downloads

# License
## Subodh Wagh

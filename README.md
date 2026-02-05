# Terminal YouTube Player

A simple, lightweight bash script to search and play YouTube music directly in the terminal (audio only) — or download songs as high-quality MP3 files.

## Features

- Search and instantly play any song from YouTube
- Plays audio only (using mpv) — no video window
- Download songs as high-quality MP3 with a simple command
- Clean and minimal terminal interface
- Type "exit" to quit the player

## Controls (while playing in mpv)

- SPACE          → Pause / Resume  
- 9 / 0          → Volume down / up  
- LEFT / RIGHT   → Seek backward / forward  
- q              → Stop playback and return to prompt

## Requirements

- yt-dlp  
- mpv  
- bash (available on almost all Linux/macOS systems)

### Install dependencies

**Ubuntu / Debian**

```bash
sudo apt update
sudo apt install yt-dlp mpv
Fedora
Bashsudo dnf install yt-dlp mpv
Arch Linux
Bashsudo pacman -S yt-dlp mpv
macOS (Homebrew)
Bashbrew install yt-dlp mpv
Installation

Clone the repository (or just download the script):

Bashgit clone https://github.com/subodh2003/terminal-youtube-player.git
cd terminal-youtube-player

Make the script executable:

Bashchmod +x yt-terminal-player.sh

(Optional) Make it available globally:

Bashsudo mv yt-terminal-player.sh /usr/local/bin/ytplay
# Now you can run it from anywhere by typing: ytplay
Usage
Bash./yt-terminal-player.sh
# or just: ytplay   (if you moved it to /usr/local/bin)
Available commands

Type a song name → plays it immediately
Example:
shape of you
Type d <song name> → downloads the song as MP3
Example:
d perfect ed sheeran
Type exit → quit the player

Downloads are saved in a folder called downloads/ in the current directory.
Example session
textTerminal YouTube Player
-----------------------------------
Type song name to play
Type: d <song name> to download
Type: exit to quit
-----------------------------------

Enter: perfect ed sheeran
Searching...
Now Playing: perfect ed sheeran

Enter: d stay the kid laroi justin bieber
Searching for download...
Download completed.

Enter: exit
Goodbye
How it works

Uses yt-dlp to search YouTube (ytsearch1: prefix — takes the top result)
Plays audio-only stream with mpv
Downloads use best available audio quality, converted to MP3
All downloaded files are saved to ./downloads/%(title)s.%(ext)s

Notes

The script automatically creates the downloads/ folder when needed
--audio-quality 0 = best available quality
No playlists or queue support (yet) — plays one song at a time
Internet connection is required

Contributing
Ideas, bug reports, and pull requests are welcome!
Possible improvements:

Add playlist / queue support
Show search results to choose from
Add playback history
Better error handling
Colorful output / progress bar

License
Subodh Wagh

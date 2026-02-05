#!/bin/bash

mkdir -p downloads

clear
echo "🎵 Terminal YouTube Player"
echo "-----------------------------------"
echo "Type song name to play"
echo "Type: d <song name>  to download"
echo "Type: exit to quit"
echo "-----------------------------------"

while true; do
    echo ""
    read -p "Enter: " QUERY

    if [ "$QUERY" = "exit" ]; then
        echo "Goodbye 👋"
        exit 0
    fi

    [ -z "$QUERY" ] && continue

    # Check if download command
    if [[ "$QUERY" == d\ * ]]; then
        SONG="${QUERY:2}"
        echo "🔍 Searching for download..."

        yt-dlp \
            -x --audio-format mp3 \
            --audio-quality 0 \
            -o "downloads/%(title)s.%(ext)s" \
            "ytsearch1:$SONG"

        echo "✅ Download completed."
        continue
    fi

    echo "🔍 Searching..."
    ID=$(yt-dlp "ytsearch1:$QUERY" --get-id 2>/dev/null)

    if [ -z "$ID" ]; then
        echo "No results found."
        continue
    fi

    URL="https://youtu.be/$ID"

    echo "▶ Now Playing: $QUERY"
    echo ""

    mpv --no-video \
        --force-window=no \
        --terminal=yes \
        --msg-level=all=no,statusline=info \
        --ytdl=yes \
        "$URL"

done


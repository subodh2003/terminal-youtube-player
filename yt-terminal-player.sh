#!/usr/bin/env bash

mkdir -p downloads

echo
echo "Terminal YouTube Player"
echo "-----------------------------------"
echo "Type song name to play"
echo "Type: d <song name> to download"
echo "Type: exit to quit"
echo "-----------------------------------"


while true; do
    echo "Enter: "
    read -r QUERY

    [ "$QUERY" = "exit" ] && exit 0
    [ -z "$QUERY" ] && continue

    # Download mode
    case "$QUERY" in
        d\ *)
            SONG="${QUERY#d }"
            echo "Searching for download..."

            yt-dlp \
                -x \
                --audio-format mp3 \
                --audio-quality 0 \
                -o "downloads/%(title)s.%(ext)s" \
                "ytsearch1:$SONG"

            echo "Download completed."
            continue
            ;;
    esac

    echo "Searching..."
    ID=$(yt-dlp "ytsearch1:$QUERY" --get-id 2>/dev/null)

    [ -z "$ID" ] && echo "No results found." && continue

    URL="https://youtu.be/$ID"

    echo "Now Playing: $QUERY"
    echo ""

    mpv --no-video --force-window=no --really-quiet "$URL"

done


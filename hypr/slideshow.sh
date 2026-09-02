
#!/bin/bash

i=0  # Initialize i

while true; do
    # Increment i
    ((i++))

    # Reset i if it reaches 3
    if [ $i -eq 2 ]; then
        i=0
    fi

    # Set wallpaper based on the value of i
    if [ $i -eq 0 ]; then
        awww img /home/ras/.config/Wallpapers//Zero.jpg
    elif [ $i -eq 1 ]; then
        awww img /home/ras/.config/Wallpapers//Two.jpg
    fi

    # Wait for 10 minutes (600 seconds)
    sleep 600

  done

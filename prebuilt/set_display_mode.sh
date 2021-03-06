#!/system/bin/sh

case $1 in 
    480p)
        /system/bin/fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 32 32 > /sys/class/display/axis
    ;;

    720p)
        /system/bin/fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 32 32 > /sys/class/display/axis
    ;;

    1080p)
        /system/bin/fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 320 156 1280 768 0 0 32 32 > /sys/class/display/axis
    ;;

    panel)
        /system/bin/fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 32 32 > /sys/class/display/axis
    ;;
    
    *)
        echo "Error: Un-supported display mode $1"
        echo "       Default to panel"
        /system/bin/fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo panel > /sys/class/display/mode
        echo 0 0 1280 768 0 0 32 32 > /sys/class/display/axis
esac

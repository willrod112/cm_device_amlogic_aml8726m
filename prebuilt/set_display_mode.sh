#!/system/bin/sh

case $1 in 
    480p)
        fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 1280 768 > /sys/class/display/axis
    ;;

    720p)
        fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 1280 768 > /sys/class/display/axis
    ;;

    1080p)
        fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 320 156 1280 768 320 156 1280 768 > /sys/class/display/axis
    ;;

    panel)
        fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 1280 768 > /sys/class/display/axis
    ;;
    
    *)
        echo "Error: Un-supported display mode $1"
        echo "       Default to 720p"
        fbset -fb /dev/graphics/fb0 -g 1280 768 1280 1536 16 -rgba 5/11,6/5,5/0,0/0
        echo $1 > /sys/class/display/mode
        echo 0 0 1280 768 0 0 1280 768 > /sys/class/display/axis
esac

#!/bin/sh
##############################################################################
# \version     1.0.0
# \date        2014Äê04ÔÂ11ÈÕ
# \author      MINI_NGUI<liaoyongming@allwinnertech.com>
# \Descriptions:
#			add test LED for homlet 
##############################################################################
source send_cmd_pipe.sh
source script_parser.sh

module_path=`script_fetch "gpio_led" "module_path"`
tmp_pin0=`script_fetch "gpio_led" "led_pin0"`
tmp_pin1=`script_fetch "gpio_led" "led_pin1"`
led_pin0=
led_pin1=
pin_data=

if [ -z "$tmp_pin0" ]; then
	echo "led_pin0 not config"
	SEND_CMD_PIPE_FAIL $3
    exit 1        
else
	tmp=${tmp_pin0%%<*}
	led_pin0=${tmp#*:}
fi

if [ -z "$tmp_pin1" ]; then
        echo "led_pin1 not config"
        SEND_CMD_PIPE_FAIL $3
    exit 1    
else 
        tmp=${tmp_pin1%%<*}
        led_pin1=${tmp#*:}
fi



#if [ -z "$module_path" ]; then
#    echo "no gpio-sunxi.ko to install"
#    SEND_CMD_PIPE_FAIL $3
#    exit 1
#else
#	echo "begin intall gpio-sunxi.ko"
#    insmod "$module_path"
#    if [ $? -ne 0 ]; then
#        SEND_CMD_PIPE_FAIL $3
#        exit 1
#    fi
#fi

if [ ! -d "/sys/class/gpio_sw/$led_pini0" ]; then
	echo "mabey cant intall gpio-sunxi.ko"
	SEND_CMD_PIPE_FAIL $3
    exit 1
else
	pin_data0="/sys/class/gpio_sw/"${led_pin0}"/data"
fi

if [ ! -d "/sys/class/gpio_sw/$led_pin1" ]; then
        echo "mabey cant intall gpio-sunxi.ko"
        SEND_CMD_PIPE_FAIL $3
    exit 1
else
        pin_data1="/sys/class/gpio_sw/"${led_pin1}"/data"
fi


while true ; do
	echo 1 > $pin_data0
	if [ $? -ne 0 ]; then
		SEND_CMD_PIPE_FAIL $3
		exit 1
	fi
        echo 1 > $pin_data1
        if [ $? -ne 0 ]; then
                SEND_CMD_PIPE_FAIL $3
                exit 1
        fi
	usleep 200000

	echo 0 > $pin_data0
	if [ $? -ne 0 ]; then
		SEND_CMD_PIPE_FAIL $3
		exit 1
	fi

        echo 0 > $pin_data1
        if [ $? -ne 0 ]; then
                SEND_CMD_PIPE_FAIL $3
                exit 1
        fi

	SEND_CMD_PIPE_OK $3
	usleep 200000
done


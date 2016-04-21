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

	tmp=${tmp_pin1%%<*}
	led_pin1=${tmp#*:}
fi

	pin_data0="/sys/class/gpio_sw/"${led_pin0}"/data"
	pin_data1="/sys/class/gpio_sw/"${led_pin1}"/data"


while true ; do
	echo 1 > $pin_data0
	echo 1 > $pin_data1
	usleep 200000

	echo 0 > $pin_data0
	echo 0 > $pin_data1

	SEND_CMD_PIPE_OK $3
	usleep 200000
done


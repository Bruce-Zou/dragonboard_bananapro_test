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

tmp_pin1=`script_fetch "gpio_pins" "gpio_pin1"`
tmp_pin2=`script_fetch "gpio_pins" "gpio_pin2"`
tmp_pin3=`script_fetch "gpio_pins" "gpio_pin3"`
tmp_pin4=`script_fetch "gpio_pins" "gpio_pin4"`
tmp_pin5=`script_fetch "gpio_pins" "gpio_pin5"`
tmp_pin6=`script_fetch "gpio_pins" "gpio_pin6"`
tmp_pin7=`script_fetch "gpio_pins" "gpio_pin7"`
tmp_pin8=`script_fetch "gpio_pins" "gpio_pin8"`
tmp_pin9=`script_fetch "gpio_pins" "gpio_pin9"`
tmp_pin10=`script_fetch "gpio_pins" "gpio_pin10"`
tmp_pin11=`script_fetch "gpio_pins" "gpio_pin11"`
tmp_pin12=`script_fetch "gpio_pins" "gpio_pin12"`
tmp_pin13=`script_fetch "gpio_pins" "gpio_pin13"`
tmp_pin14=`script_fetch "gpio_pins" "gpio_pin14"`
tmp_pin15=`script_fetch "gpio_pins" "gpio_pin15"`
tmp_pin16=`script_fetch "gpio_pins" "gpio_pin16"`
tmp_pin17=`script_fetch "gpio_pins" "gpio_pin17"`
tmp_pin18=`script_fetch "gpio_pins" "gpio_pin18"`
tmp_pin19=`script_fetch "gpio_pins" "gpio_pin19"`
tmp_pin20=`script_fetch "gpio_pins" "gpio_pin20"`
tmp_pin21=`script_fetch "gpio_pins" "gpio_pin21"`
tmp_pin22=`script_fetch "gpio_pins" "gpio_pin22"`
tmp_pin23=`script_fetch "gpio_pins" "gpio_pin23"`
tmp_pin24=`script_fetch "gpio_pins" "gpio_pin24"`
tmp_pin25=`script_fetch "gpio_pins" "gpio_pin25"`
tmp_pin26=`script_fetch "gpio_pins" "gpio_pin26"`
tmp_pin27=`script_fetch "gpio_pins" "gpio_pin27"`
tmp_pin28=`script_fetch "gpio_pins" "gpio_pin28"`
tmp_pin29=`script_fetch "gpio_pins" "gpio_pin29"`
tmp_pin30=`script_fetch "gpio_pins" "gpio_pin30"`
tmp_pin31=`script_fetch "gpio_pins" "gpio_pin31"`
tmp_pin32=`script_fetch "gpio_pins" "gpio_pin32"`
tmp_pin33=`script_fetch "gpio_pins" "gpio_pin33"`

	tmp1=${tmp_pin1%%<*}
	gpio_pin1=${tmp1#*:}

        tmp2=${tmp_pin2%%<*}
        gpio_pin2=${tmp2#*:}

        tmp3=${tmp_pin3%%<*}
        gpio_pin3=${tmp3#*:}

        tmp4=${tmp_pin4%%<*}
        gpio_pin4=${tmp4#*:}

        tmp5=${tmp_pin5%%<*}
        gpio_pin5=${tmp5#*:}

        tmp6=${tmp_pin6%%<*}
        gpio_pin6=${tmp6#*:}

        tmp7=${tmp_pin7%%<*}
        gpio_pin7=${tmp7#*:}

        tmp8=${tmp_pin8%%<*}
        gpio_pin8=${tmp8#*:}

        tmp9=${tmp_pin9%%<*}
        gpio_pin9=${tmp9#*:}

        tmp10=${tmp_pin10%%<*}
        gpio_pin10=${tmp10#*:}

        tmp11=${tmp_pin11%%<*}
        gpio_pin11=${tmp11#*:}

        tmp12=${tmp_pin12%%<*}
        gpio_pin12=${tmp12#*:}

        tmp13=${tmp_pin13%%<*}
        gpio_pin13=${tmp13#*:}

        tmp14=${tmp_pin14%%<*}
        gpio_pin14=${tmp14#*:}

        tmp15=${tmp_pin15%%<*}
        gpio_pin15=${tmp15#*:}

        tmp16=${tmp_pin16%%<*}
        gpio_pin16=${tmp16#*:}

        tmp17=${tmp_pin17%%<*}
        gpio_pin17=${tmp17#*:}

        tmp18=${tmp_pin18%%<*}
        gpio_pin18=${tmp18#*:}

        tmp19=${tmp_pin19%%<*}
        gpio_pin19=${tmp19#*:}

        tmp20=${tmp_pin20%%<*}
        gpio_pin20=${tmp20#*:}

        tmp21=${tmp_pin21%%<*}
        gpio_pin21=${tmp21#*:}

        tmp22=${tmp_pin22%%<*}
        gpio_pin22=${tmp22#*:}

        tmp23=${tmp_pin23%%<*}
        gpio_pin23=${tmp23#*:}

        tmp24=${tmp_pin24%%<*}
        gpio_pin24=${tmp24#*:}

        tmp25=${tmp_pin25%%<*}
        gpio_pin25=${tmp25#*:}

        tmp26=${tmp_pin26%%<*}
        gpio_pin26=${tmp26#*:}

        tmp27=${tmp_pin27%%<*}
        gpio_pin27=${tmp27#*:}

        tmp28=${tmp_pin28%%<*}
        gpio_pin28=${tmp28#*:}

        tmp29=${tmp_pin29%%<*}
        gpio_pin29=${tmp29#*:}

        tmp30=${tmp_pin30%%<*}
        gpio_pin30=${tmp30#*:}

        tmp31=${tmp_pin31%%<*}
        gpio_pin31=${tmp31#*:}

        tmp32=${tmp_pin32%%<*}
        gpio_pin32=${tmp32#*:}

        tmp33=${tmp_pin33%%<*}
        gpio_pin33=${tmp33#*:}


	pin_data1="/sys/class/gpio_sw/"${gpio_pin1}"/data"
        pin_data2="/sys/class/gpio_sw/"${gpio_pin2}"/data"
        pin_data3="/sys/class/gpio_sw/"${gpio_pin3}"/data"
        pin_data4="/sys/class/gpio_sw/"${gpio_pin4}"/data"
        pin_data5="/sys/class/gpio_sw/"${gpio_pin5}"/data"
        pin_data6="/sys/class/gpio_sw/"${gpio_pin6}"/data"
        pin_data7="/sys/class/gpio_sw/"${gpio_pin7}"/data"
        pin_data8="/sys/class/gpio_sw/"${gpio_pin8}"/data"
        pin_data9="/sys/class/gpio_sw/"${gpio_pin9}"/data"
        pin_data10="/sys/class/gpio_sw/"${gpio_pin10}"/data"
        pin_data11="/sys/class/gpio_sw/"${gpio_pin11}"/data"
        pin_data12="/sys/class/gpio_sw/"${gpio_pin12}"/data"
        pin_data13="/sys/class/gpio_sw/"${gpio_pin13}"/data"
        pin_data14="/sys/class/gpio_sw/"${gpio_pin14}"/data"
        pin_data15="/sys/class/gpio_sw/"${gpio_pin15}"/data"
        pin_data16="/sys/class/gpio_sw/"${gpio_pin16}"/data"
        pin_data17="/sys/class/gpio_sw/"${gpio_pin17}"/data"
        pin_data18="/sys/class/gpio_sw/"${gpio_pin18}"/data"
        pin_data19="/sys/class/gpio_sw/"${gpio_pin19}"/data"
        pin_data20="/sys/class/gpio_sw/"${gpio_pin20}"/data"
        pin_data21="/sys/class/gpio_sw/"${gpio_pin21}"/data"
        pin_data22="/sys/class/gpio_sw/"${gpio_pin22}"/data"
        pin_data23="/sys/class/gpio_sw/"${gpio_pin23}"/data"
        pin_data24="/sys/class/gpio_sw/"${gpio_pin24}"/data"
        pin_data25="/sys/class/gpio_sw/"${gpio_pin25}"/data"
        pin_data26="/sys/class/gpio_sw/"${gpio_pin26}"/data"
        pin_data27="/sys/class/gpio_sw/"${gpio_pin27}"/data"
        pin_data28="/sys/class/gpio_sw/"${gpio_pin28}"/data"
        pin_data29="/sys/class/gpio_sw/"${gpio_pin29}"/data"
        pin_data30="/sys/class/gpio_sw/"${gpio_pin30}"/data"
        pin_data31="/sys/class/gpio_sw/"${gpio_pin31}"/data"
        pin_data32="/sys/class/gpio_sw/"${gpio_pin32}"/data"
	pin_data33="/sys/class/gpio_sw/"${gpio_pin33}"/data"
#fi

while true ; do

for nr in [ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 ]; do
	temp_data=pin_data$nr                  
        eval temp_data=\$$temp_data  
	echo 1 > ${temp_data}
#	if [ $? -ne 0 ]; then
#		SEND_CMD_PIPE_FAIL $3
#		exit 1
#	fi
done
	sleep 2

for nr in [ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 ]; do
	temp_data=pin_data$nr
        eval temp_data=\$$temp_data 
	echo 0 > ${temp_data}
#	if [ $? -ne 0 ]; then
#		SEND_CMD_PIPE_FAIL $3
#		exit 1
#	fi
done

	SEND_CMD_PIPE_OK $3
	sleep 2
done


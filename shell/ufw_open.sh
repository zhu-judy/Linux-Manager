#!/bin/bash
#打开防火墙
echo $1 | sudo -S ufw enable > /dev/null
#判断密码
if [ $? -eq 0 ]
then 
	echo "防火墙已开启"
else
	echo "密码输入错误"
fi

#!/bin/bash
#关闭防火墙
echo $1 | sudo -S ufw disable > /dev/null
#判断密码
if [ $? -eq 0 ]
then 
	echo "防火墙已关闭"
else
	echo "密码输入错误"
fi

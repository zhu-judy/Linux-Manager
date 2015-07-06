#!/bin/bash
#关闭本机端口，禁止外部访问
echo $1 | sudo -S ufw deny $2 > /dev/null
#判断密码
if [ $? -eq 0 ]
then	
	echo "本机端口：$2 已关闭"
elif [ $2 -le 65535 -a $2 -ge 0 ]
then
	echo "密码输入错误"
else
	#判断端口号
	echo "请输入0～65535的端口号"
fi



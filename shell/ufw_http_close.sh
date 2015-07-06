#!/bin/bash
#关闭外部访问http服务
echo $1 | sudo -S ufw deny http > /dev/null
#判断密码
if [ $? -eq 0 ]
then 
	echo "关闭外部访问HTTP服务"
else
	echo "密码输入错误"
fi

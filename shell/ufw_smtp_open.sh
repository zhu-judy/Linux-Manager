#!/bin/bash
#开启外部访问smtp服务
echo $1 | sudo -S ufw allow smtp > /dev/null
#判断密码
if [ $? -eq 0 ]
then 
	echo "开启外部访问SMTP服务"
else
	echo "密码输入错误"
fi

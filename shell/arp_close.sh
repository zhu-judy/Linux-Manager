#!/bin/bash
a=`arp |grep :|awk NR==1'{print $1}'`
#判断密码
echo $1 |sudo -S arp -d $a
if [ $? -eq 0 ]
then 
	echo "ARP防火墙已关闭"
else
	echo "密码输入错误"
fi
#统计表中地址的个数
n=$(arp |grep :|wc -l)
#关闭arp防火墙
for((m=1;m<=$n;m++))
do
	a=`arp |grep :|awk NR==$m'{print $1}'`
	#删除指定记录
	echo $1 |sudo -S arp -d $a

done

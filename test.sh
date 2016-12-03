
# read命令-p(提示语句) -n(字符个数) -t(等待时间) -s(不回显) 和“读文件”深入学习 

# NAME=

# 读取用户名
inputName(){
	read -p "Enter your name: " name              
	while [ -z $name ]
	do
		read -p "Enter your name: " name
	done

	NAME=$name
}

main(){
	inputName
	echo $NAME

	read -s -p "请输入密码: " pwd              
	echo "your password is $pwd"
}

main
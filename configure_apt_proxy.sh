proxy_host=$(zenity --entry --text="Enter the proxy host")
proxy_port=$(zenity --entry --text="Enter the proxy port")

if [ $proxy_host ] && [ $proxy_port ]; then 
	echo "Acquire::http::Proxy \"http://$proxy_host:$proxy_port/\";
	Acquire::https::Proxy \"http://$proxy_host:$proxy_port/\";" > "/etc/apt/apt.conf.d/proxy.conf";
	zenity --info --text="Proxy configured correctly";
else
	zenity --error --text="The values provided are incorrect";
fi

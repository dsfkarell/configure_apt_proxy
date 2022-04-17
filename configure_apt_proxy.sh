proxy_host=$(zenity --entry --text="Enter the proxy host")
proxy_port=$(zenity --entry --text="Enter the proxy port")
proxy_user=""
proxy_passw=""
PROXY_AUTH=""

if $(zenity --question --text="Authentication required?") ; then
    proxy_user=$(zenity --entry --text="Username");
    proxy_passw=$(zenity --password --text="Password");
fi

if [ $proxy_user ] && [ $proxy_passw ]; then
    PROXY_AUTH="$proxy_user:$proxy_passw@";
fi

if [ $proxy_host ] && [ $proxy_port ]; then
	echo "Acquire::http::Proxy \"http://$PROXY_AUTH$proxy_host:$proxy_port/\";
	Acquire::https::Proxy \"http://$PROXY_AUTH$proxy_host:$proxy_port/\";" > "/etc/apt/apt.conf.d/proxy.conf";
	zenity --info --text="Proxy configured correctly";
else
	zenity --error --text="The values provided are incorrect";
fi

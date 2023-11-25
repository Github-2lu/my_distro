proxy=$(grep -oP "Proxy=\K.*" ../install.config)

if [ "$proxy" != "no_proxy" ];
then
    export http_proxy=$proxy
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy

    echo "#####PROXY SET######"
fi

unset proxy

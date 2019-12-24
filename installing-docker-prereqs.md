<pre>
$ sudo apt install apt-transport-https ca-certificates curl software-properties-common 
$ sudo apt update
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
$ sudo apt update
$ apt-cache policy docker-ce
$ sudo apt install docker-ce
$ sudo systemctl status docker
</pre>

== To run as non-root ==
<pre>
$ sudo usermod -aG docker ${USER}
$ su - ${USER}
$ id -nG
</pre>

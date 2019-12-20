# centos6

Instructions for Centos 6 mirror

Install Centos 6.10 on VM run by VMware Player for VirtualBox.

Can also use docker running on Ubuntu, see the Makefile.

Install Centos 6.10 with following options:

  2-4 GB memory, 500Gb - 1Tb disk, 2-4 processors

User name/password is user1/passw0rd

Update /etc/wgetrc and /etc/yum.conf with proxy information (if needed).

Add the epel-release repo (extra packages for enterprise linux):

<pre>
# yum install epel-release
# yum repolist  (should show 4 repos, base, epel, extras, updates)
</pre>
<pre>
# mkdir /home/repos
# cd /home/repos
</pre>

<pre>
# reposync - r base ; reposync -r updates
# reposync -r epel ; reposync -r extras
</pre>

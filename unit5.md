

**Body of work**



IP address

VM1: 10.1.1.1

VM2:10.1.1.2

In unit3, I have completed the connection of two virtual machines and changed the IP address





1：

First install the ssh service (*sudo apt-get install openssh-server*) and iptables(*sudo apt install iptables*).

Because there can be multiple IP addresses on a network interface, first use the ip addr command to view all network interfaces of the device, and then use sudo ip addr ip address/mask dev network interface name to configure a new IP and subnet for a network interface Mask. Then use ping to check the connection.



2:

If you want to implement the ssh request of the second virtual machine, you need to use the following code:

*sudo iptables -t filter -I INPUT -s 10.1.1.2 -p tcp -m tcp --dport 22 -j REJECT*



3:

Open the port conversion of IP1(sudo vi /etc/sysctl.conf ), and then modify the default port usage of ssh (sudo vi /etc/ssh/sshd_config) and change the port to 12345.

Restart and log in again



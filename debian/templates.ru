Template: ssh/upgrade_to_openssh
Type: boolean
Description: Are you sure you want to upgrade to OpenSSH?
 This version of ssh (a.k.a. OpenSSH) is supposed to be a 100% compatible
 drop in replacement for the original (non-free) implemetation.
 .
 If you find that it is not, please report the problem as a bug.
 .
 You can still find the old version of ssh in the ssh-nonfree package
 (although the only reason you are likely to want that is if you also
 want to install the ssh2 package).
 .
 NOTE: If you're upgrading a machine remotely, via ssh, make sure you have at
 least one other ssh session running as root, and once this is installed,
 check that you can still log in (with a third session), before logging out.
Description-ru: �� �������, ��� ������ �������� OpenSSH?
 ��� ������ ssh(�� �� OpenSSH) �������� 100%-����������� � ������������
 (�����������) �����������.
 .
 ���� �� ���������� ��������, ��, ����������, �������� �� ���� ������.
 .
 ��  ������  ��  ��������  ����� ������ ������ ssh � ������ ssh-nonfree
 (���� ������������� ���������� ��� ������������ ������, ���� �� ������
 ���������� ��� � ����� ssh2).
 .
 ����������: ���� �� �������� ���������� ������ ����� ssh, �� ���������
 ���  ���  �������  ���  ���� ������ ssh �������� �� root, � ��� ������
 �������  ����������  ����������,  ���������,  ���  ��  ������� ����� �
 ������� (��������� ������ ������), ����� ��� ��� �������������.

Template: ssh/protocol2_default
Type: note
Description: SSH uses protocol 2 by default.
 This version of SSH (unlike previous ones) uses ssh
 protocol version 2 by default. The key file formats have changed
 between the protocol versions, so your old key files will not be
 useful. You may either pass the '-1' option to ssh to force it to use
 the older protocol (and your old keys), or generate new keys. Protocol
 version 2 is thought to be more secure, so this is the preferred
 course of action. See README.Debian for a little more information
 .
 Also, due to problems with IPv4 and IPv6 interoperation, IPv4 is now
 the default (this is a change from previous versions). Passing ssh the
 -6 flag will cause IPv6 addresses to be used. Once the current issues
 with using IPv6 on machines with IPv4 addresses have been solved, the
 previous default will be restored
Description-ru: SSH ���������� �� ��������� �������� ������ 2.
 ���  ������  SSH  (�  �������  ��  ����������) ���������� �� ���������
 ��������  ������  2.  �  ����  ������  ��������� ������� ������ ������
 ������,  ��� ��� ���� ������ ����� ������ ������������. �� ������ ����
 ���������  �����  '-1' ��� ssh, ����� ������������� ������������ �����
 ������  ������  ���������,  ����  ������������ �����  �����.  ��������
 ������  2  ����� ����������, � ������� ������������� �� ���������. ��.
 ����������� � ����� README.Debian.
 .
 �����   ��-��  �������  ������������������  IPv4  �  IPv6,  ������  ��
 ���������  ��  ���������  ������������  IPv4  (� ������� �� ����������
 ������).  ����� ������������ IPv6, ���� ������ ���� -6. ��� ������ ���
 ���������  �  ��������������  IPv6  ��  �������  � �������� IPv4 �����
 ������, �� ������� ��������� �� ��������� ����� �������������.

Template: ssh/ancient_version
Type: note
Description: You are trying to upgrade from an ancient version of non-free ssh
 This is bound to be using IDEA encryption for your identity files.
 You should upgrade to a vaguely contemporary (1.2.15 or later) version of
 non-free ssh, and then upgrade all your key files using ssh-keygen -u
 before attempting to migrate to OpenSSH.
 .
 Alternatively, you could just forget about that, and generate new keys.
Description-ru: �� ��������� �������� ������� ������ ������������� ssh
 ���  ����������  ��������������   ����������  IDEA  ���  �����  ������
 �������������. ������������� �������� ����� ����������� ������ (1.2.15
 ���  �����  �������) ������������� ssh, � ����� �������� ���� ��������
 ����� �������� `ssh-keygen -u` ����� �������� ������� �� OpenSSH.
 .
 ��� �������, ������ ������ ��� ���� ���� � ������������� ����� �����.

Template: ssh/use_old_init_script
Type: boolean
Description: Do you want to continue (and risk killing active ssh sessions) ?
 The version of /etc/init.d/ssh that you have installed, is likely to kill
 all running sshd instances.  If you are doing this upgrade via an ssh
 session, that would be a Bad Thing(tm).
 .
 You can fix this by adding "--pidfile /var/run/sshd.pid" to the
 start-stop-daemon line in the stop section of the file.
Description-ru: �� ������ ���������� (������ �������� �������� ssh-����������)?
 ������  /etc/init.d/ssh,  �������  ��  ��������������, ����� ����� ���
 ����������  ��������  ssh.  ���� �� ������������� ��� ���������� �����
 ssh ������, �� ��� ������ ���� (tm).
 .
 ��� ����� ��������� ����������� "--pidfile /var/run/sshd.pid" � ������
 start-stop-daemon � ������� stop ����� �����.

Template: ssh/forward_warning
Type: note
Description: NOTE: Forwarding of X11 and Authorization disabled by default.
 For security reasons, the Debian version of ssh has ForwardX11 and
 ForwardAgent set to ``off'' by default.
 .
 You can enable it for servers you trust, either
 in one of the configuration files, or with the -X command line option.
 .
 More details can be found in /usr/share/doc/ssh/README.Debian
Description-ru: ����������: ���������� X11 � Authorization �������� �� ���������.
 �� �������� ������������, � ������ ��� Debian ssh ����� ForwardX11 �
 ForwardAgent �������������� � ``off'' �� ���������.
 .
 �� ������ ��������� �� ��� ��������, ������� ��������� ���� � ����� ��
 ����������� ������, ��� ���������� ��������� ������ -X.
 .
 ������������� ���������� ����� ����� � /usr/share/doc/ssh/README.Debian

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that package.
Description-ru: ��������������: ���������� rsh-server --- ������, �� ����� ������
 �������������  rsh-server  �������  ������������,  ������� �� ��������
 ������ �������� ������������ ssh. ������������� ������� ���� �����.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-ru: ��������������: ���������� telnetd --- ������, �� ����� ������
 � ������������ �� ��� ������� ����� telnetd (���� ��� ������������� ��
 ����� ������ telnet) ��� ����������  telnet-ssl,  �����  ����� ���� ��
 �����������  ��  ����������  ��  ����  ���������������  ����� � ������
 ������������� � ������ ���������� � telnet-�������.

Template: ssh/encrypted_host_key_but_no_keygen
Type: note
Description: Warning: you must create a new host key
 There is an old /etc/ssh/ssh_host_key, which is IDEA encrypted.
 OpenSSH can not handle this host key file, and I can't find the
 ssh-keygen utility from the old (non-free) SSH installation.
 .
 You will need to generate a new host key.
Description-ru: ��������������: �� ������ ������� ����� ���� ������.
 ���� ������ /etc/ssh/ssh_host_key, ������� ���������� IDEA. OpenSSH ��
 �����  ��������  �  ����  ������  ������,  �  �  �� ���� ����� ������� 
 ssh-keygen �� ������ (�����������) ����������� SSH.
 .
 ��� ���� ����� ������������� ����� ���� �����.

Template: ssh/SUID_client
Type: boolean
Default: true
Description: Do you want /usr/bin/ssh to be installed SUID root?
 You have the option of installing the ssh client with the SUID bit set.
 .
 If you make ssh SUID, you will be able to use Rhosts/RhostsRSA
 authentication, but will not be able to use socks via the LD_PRELOAD
 trick.  This is the traditional approach.
 .
 If you do not make ssh SUID, you will be able to use socks, but
 Rhosts/RhostsRSA authentication will stop working, which may stop you
 logging in to remote systems.  It will also mean that the source
 port will be above 1024, which may confound firewall rules you've set up.
 .
 If in doubt, I suggest you install it with SUID.  If it causes
 problems you can change your mind later by running:   dpkg-reconfigure ssh 
Description-ru: ������ ���������� /usr/bin/ssh ��� SUID root?
 ��  ������  �����������  ���������� /usr/bin/ssh � ������������� �����
 SUID.
 .
 ����  ��  �������  ssh SUID, �� �� ������� ������������ ��������������
 Rhosts/RhostsRSA,  ��  �� ������� ������������ socks ����� LD_PRELOAD.
 ��� ������������ ���������.
 .
 ����  ��  �������� ssh SUID, �� �� ������� ������������ socks, �� ����
 ��������������  Rhosts/RhostsRSA  �� ����� ��������, ��� ����� �������
 ����������� ���� ����������� �� ��������� ��������. ����� ��� ��������
 ��� ����� ������������� ����� ����� ������ 1024, ��� ����� �� ��������
 ������ ������������� ���� ������ ��������.
 .
 ���� �� �� ������, ��� ������, �� ������������� ���������� ��� � �����
 SUID. ���� �� ����� �����������, �� ��� ��������� ����� ����� ��������
 ��������: "dpkg-reconfigure ssh".

Template: ssh/run_sshd
Type: boolean
Default: true
Description: Do you want to run the sshd server ?
 This package contains both the ssh client, and the sshd server.
 .
 Normally the sshd Secure Shell Server will be run to allow remote
 logins via ssh.
 .
 If you are only interested in using the ssh client for outbound
 connections on this machine, and don't want to log into it at all
 using ssh, then you can disable sshd here.
Description-ru: ������ ��������� ������ sshd?
 ���� ����� �������� � ssh-������, � ssh-������.
 .
 ������  sshd  Secure Shell Server  �����������  ��� ���������� ����� �
 ����������� � ������� ����� ssh.
 .
 ����  ���  ����������  ������  ������������� ssh-������� ��� ���������
 ���������� �  ����  ������, � ��  �� ������ ������� � �� ������� �����
 ssh, �� �� ������ ������ ��������� sshd.

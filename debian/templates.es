Template: ssh/run_sshd
Type: boolean
Default: true
Description: Do you want to run the sshd server ?
 This package contains both the ssh client, and the sshd server.
 .
 Normally the sshd Secure Shell Server will be run to allow remote logins
 via ssh.
 .
 If you are only interested in using the ssh client for outbound
 connections on this machine, and don't want to log into it at all using
 ssh, then you can disable sshd here.
Description-es: �Quiere ejecutar el servidor sshd?
 Este paquete contiene el cliente ssh y el servidor sshd.
 .
 Generalmente, el servidor de ssh (Secure Shell Server) se ejecuta para
 permitir el acceso remoto mediante ssh.
 .
 Si s�lo est� interesado en usar el cliente ssh en conexiones salientes del
 sistema y no quiere acceder a �l mediante ssh, entonces puede desactivar
 sshd.

Template: ssh/use_old_init_script
Type: boolean
Default: false
Description: Do you want to continue (and risk killing active ssh sessions) ?
 The version of /etc/init.d/ssh that you have installed, is likely to kill
 all running sshd instances.  If you are doing this upgrade via an ssh
 session, that would be a Bad Thing(tm).
 .
 You can fix this by adding "--pidfile /var/run/sshd.pid" to the
 start-stop-daemon line in the stop section of the file.
Description-es: �Desea continuar, a�n a riesgo de matar las sesiones ssh activas?
 La versi�n de /etc/init.d/ssh que tiene instalada es muy probable que
 mate el demonio ssh. Si est� actualizando a trav�s de una sesi�n ssh,
 puede que no sea muy buena idea.
 .
 Puede arreglarlo a�adiendo "--pidfile /var/run/sshd.pid" a la l�nea
 'start-stop-daemon', en la secci�n 'stop' del fichero.

Template: ssh/SUID_client
Type: boolean
Default: true
Description: Do you want /usr/lib/ssh-keysign to be installed SUID root?
 You have the option of installing the ssh-keysign helper with the SUID bit
 set.
 .
 If you make ssh-keysign SUID, you will be able to use SSH's Protocol 2
 host-based authentication.
 .
 If in doubt, I suggest you install it with SUID.  If it causes problems
 you can change your mind later by running:   dpkg-reconfigure ssh
Description-es: �Quiere instalar /usr/lib/ssh-keysign SUID root?
 Puede instalar ssh-keysign con el bit SUID (se ejecutar� con privilegios
 de root).
 .
 Si hace ssh-keysign SUID, podr� usar la autentificiaci�n basada en
 servidor de la versi�n 2 del protocolo SSH.
 .
 Si duda, se recomienda que lo instale SUID. Si surgen problemas puede
 cambiar de opini�n posteriormente ejecutando �dpkg-reconfigure ssh�.

Template: ssh/encrypted_host_key_but_no_keygen
Type: note
Description: Warning: you must create a new host key
 There is an old /etc/ssh/ssh_host_key, which is IDEA encrypted. OpenSSH
 can not handle this host key file, and I can't find the ssh-keygen utility
 from the old (non-free) SSH installation.
 .
 You will need to generate a new host key.
Description-es: Aviso: debe crear una nueva clave para su servidor
 Su sistema tiene un /etc/ssh/ssh_host_key antiguo, que usa cifrado IDEA.
 OpenSSH no puede manejar este fichero de claves y tampoco se encuentra la
 utilidad ssh-keygen incluida en el paquete ssh no libre.
 .
 Necesitar� generar una nueva clave para su servidor.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-es: Aviso: tiene telnetd instalado
 Es muy aconsejable que borre el paquete telnetd si no necesita realmente
 ofrecer acceso mediante telnet o instalar telnetd-ssl para que las
 contrase�as, nombres de usuario y dem�s informaci�n de las sesiones telnet
 no viajen sin cifrar por la red.

Template: ssh/forward_warning
Type: note
Description: NOTE: Forwarding of X11 and Authorization disabled by default.
 For security reasons, the Debian version of ssh has ForwardX11 and
 ForwardAgent set to ``off'' by default.
 .
 You can enable it for servers you trust, either in one of the
 configuration files, or with the -X command line option.
 .
 More details can be found in /usr/share/doc/ssh/README.Debian
Description-es: NOTA: Reenv�o de X11 y Autorizaci�n desactivadas por defecto.
 Por razones de seguridad, la versi�n de ssh de Debian tiene por defecto
 ForwardX11 y ForwardAgent desactivadas.
 .
 Puede activar estas opciones para los servidores en los que conf�e, en los
 ficheros de configuraci�n o con la opci�n -X en l�nea de comandos.
 .
 Puede encontrar m�s detalles en /usr/share/doc/ssh/README.Debian.

Template: ssh/privsep_tell
Type: note
Description: Privilege separation
 This version of OpenSSH contains the new privilege separation option. This
 significantly reduces the quantity of code that runs as root, and
 therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any PAM
 session modules that need to run as root (pam_mkhomedir, for example) will
 fail, and PAM keyboard-interactive authentication won't work.
 .
 Privilege separation is turned on by default, so if you decide you want it
 turned off, you need to add "UsePrivilegeSeparation no" to
 /etc/ssh/sshd_config.
 .
 NB! If you are running a 2.0 series Linux kernel, then privilege
 separation will not work at all, and your sshd will fail to start unless
 you explicitly turn privilege separation off.
Description-es: Separaci�n de privilegios
 Esta versi�n de OpenSSH incluye una nueva opci�n de separaci�n de
 privilegios que reduce significativamente la cantidad de c�digo que se
 ejecuta como root, por lo que reduce el impacto de posibles agujeros de
 seguridad en sshd.
 .
 Desafortunadamente, la separaci�n de privilegios no interact�a
 correctamente con PAM. Cualquier m�dulo PAM que necesite ejecutarse como
 root (como, por ejemplo, pam_mkhomedir) y la autentificaci�n interactiva
 PAM con teclado no funcionar�n.
 .
 La separaci�n de privilegios est� activa por defecto, por lo que si decide
 desactivarla, tiene que a�adir "UsePrivilegeSeparation no" al fichero
 /etc/ssh/sshd_config.
 .
 Nota: Si utiliza un n�cleo Linux de la serie 2.0, la separaci�n de
 privilegios fallar� estrepitosamente y sshd no funcionar� a no ser que la
 desactive.

Template: ssh/ssh2_keys_merged
Type: note
Description: ssh2 keys merged in configuration files
 As of version 3 OpenSSH no longer uses separate files for ssh1 and ssh2
 keys. This means the authorized_keys2 and known_hosts2 files are no longer
 needed. They will still be read in order to maintain backwards
 compatibility
Description-es: Las claves ssh2 ya se incluyen en los ficheros de configuraci�n
 A partir de la versi�n 3, OpenSSH ya no utiliza ficheros diferentes para
 las claves ssh1 y ssh2. Esto quiere decir que ya no son necesarios los
 ficheros authorized_keys2 y known_hosts2, aunque a�n se seguir�n leyendo
 para mantener compatibilidad hacia atr�s.

Template: ssh/protocol2_only
Type: boolean
Default: true
Description: Allow SSH protocol 2 only
 This version of OpenSSH supports version 2 of the ssh protocol, which is
 much more secure.  Disabling ssh 1 is encouraged, however this will slow
 things down on low end machines and might prevent older clients from
 connecting (the ssh client shipped with "potato" is affected).
 .
 Also please note that keys used for protocol 1 are different so you will
 not be able to use them if you only allow protocol 2 connections.
 .
 If you later change your mind about this setting, README.Debian has
 instructions on what to do to your sshd_config file.
Description-es: Permitir s�lo la versi�n 2 del protocolo SSH
 Esta versi�n de OpenSSH soporta la versi�n 2 del protocolo ssh, que es
 mucho m�s segura que la anterior. Se recomienda desactivar la versi�n 1,
 aunque funcionar� m�s lento en m�quinas modestas y puede impedir que se
 conecten clientes antiguos, como, por ejemplo, el incluido en "potato".
 .
 Tambi�n tenga en cuenta que las claves utilizadas para el protocolo 1 son
 diferentes, por lo que no podr� usarlas si �nicamente permite conexiones
 mediante la versi�n 2 del protocolo.
 .
 Si m�s tarde cambia de opini�n, el fichero README.Debian contiene
 instrucciones sobre c�mo modificar en el fichero sshd_config.

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that
 package.
Description-es: Aviso: tiene rsh-server instalado
 Tener rsh-server instalado representa un menoscabo de la seguridad que
 probablemente desea obtener instalando ssh. Es muy aconsejable que borre
 ese paquete.

Template: ssh/privsep_ask
Type: boolean
Default: true
Description: Enable Privilege separation
 This version of OpenSSH contains the new privilege separation option. This
 significantly reduces the quantity of code that runs as root, and
 therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any PAM
 session modules that need to run as root (pam_mkhomedir, for example) will
 fail, and PAM keyboard-interactive authentication won't work.
 .
 Since you've opted to have me generate an sshd_config file for you, you
 can choose whether or not to have Privilege Separation turned on or not.
 Unless you are running 2.0 (in which case you *must* say no here or your
 sshd won't start at all) or know you need to use PAM features that won't
 work with this option, you should say yes here.
Description-es: Activar separaci�n de privilegios
 Esta versi�n de OpenSSH incluye una nueva opci�n de separaci�n de
 privilegios que reduce significativamente la cantidad de c�digo que se
 ejecuta como root, por lo que reduce el impacto de posibles agujeros de
 seguridad en sshd.
 .
 Desafortunadamente, la separaci�n de privilegios no interact�a
 correctamente con PAM. Cualquier m�dulo PAM que necesite ejecutarse como
 root (como, por ejemplo, pam_mkhomedir) y la autentificaci�n PAM mediante
 teclado no funcionar�n.
 .
 Puesto que ha elegido crear autom�ticamente el fichero sshd_config, puede
 decidir ahora si quiere activar la opci�n de separaci�n de privilegios. A
 menos que utilice la versi�n 2.0 (en cuyo caso debe responer no aqu� o
 sshd no arrancar�) o sepa que necesita usar ciertas caracter�sticas de PAM
 que funcionan con esta opci�n, deber�a responder s� a esta pregunta.

Template: ssh/new_config
Type: boolean
Default: true
Description: Generate new configuration file
 This version of OpenSSH has a considerably changed configuration file from
 the version shipped in Debian 'Potato', which you appear to be upgrading
 from. I can now generate you a new configuration file
 (/etc/ssh/sshd.config), which will work with the new server version, but
 will not contain any customisations you made with the old version.
 .
 Please note that this new configuration file will set the value of
 'PermitRootLogin' to yes (meaning that anyone knowing the root password
 can ssh directly in as root). It is the opinion of the maintainer that
 this is the correct default (see README.Debian for more details), but you
 can always edit sshd_config and set it to no if you wish.
 .
 It is strongly recommended that you let me generate a new configuration
 file for you.
Description-es: Generar un nuevo fichero de configuraci�n
 Esta versi�n de OpenSSH tiene un fichero de configuraci�n
 considerablemente diferente del incluido en Debian Potato, que es la
 versi�n desde la que parece estar actualizando. Puede crear
 autom�ticamente un nuevo fichero de configuraci�n (/etc/ssh/sshd_config),
 que funcionar� con la nueva versi�n del servidor, pero no incuir� las
 modificaciones que hiciera en la versi�n antigua.
 .
 Adem�s, recuerde que este nuevo fichero de configuraci�n dir� s� en la
 opci�n 'PermitRootLogin', por lo que cualquiera que conozca la contrase�a
 de root podr� entrar mediante ssh directamente como root. En opini�n del
 mantenedor �sta es la opci�n predeterminada m�s adecuada (puede leer
 README.Debian si quiere conocer m�s detalles), pero siempre puede editar
 sshd_config y poner no si lo desea.
 .
 Es muy recomendable que permita que se genere un nuevo fichero de
 configuraci�n ahora.

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
 file for you 
Description-es: Generar un fichero de configuraci�n nuevo
 Esta versi�n de OpenSSH tiene un fichero de configuraci�n muy distinto del
 que inclu�a la versi�n de 'Potato'. Parece que est� actualizando desde esa
 versi�n, por lo que puede generar un nuevo fichero de configuraci�n
 (/etc/ssh/sshd.config), que funcionar� con la nueva versi�n del servidor,
 pero no tendr� ninguno de los cambios que hubiera hecho a la versi�n
 antigua.
 .
 Debe saber que este nuevo fichero de configuraci�n pondr� el valor de
 'PermitRootLogin' a "yes" (por lo que root podr� entrar directamente por
 ssh). El mantenedor opina que �sta es la opci�n por defecto m�s adecuada
 (consulte README.Debian para conocer m�s detalles), pero recuerde que
 siempre puede editar sshd_config y cambiarlo.
 .
 Es muy recomendable generar ahora autom�ticamente un nuevo fichero de
 configuraci�n.

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
 mucho m�s segura que la anterior. Se recomienda no usar ssh versi�n 1,
 aunque ir� m�s lento en m�quinas modestas y puede impedir que se conecten
 clientes antiguos, como por ejemplo el cliente de ssh incluido en
 "potato".
 .
 Tambi�n tenga en cuenta que las claves utilizadas para el protocolo 1 son
 diferentes, por lo que no podr� usarlas si �nicamente permite conexiones
 mediante el protocolo 2.
 .
 Si cambia de opini�n m�s tarde, el fichero README.Debian contiene
 instrucciones sobre qu� ha de cambiar en el fichero sshd_config.

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
Description-es: �Desea continuar, a�n a riesgo de matar todas las sesiones ssh?
 La versi�n de /etc/init.d/ssh que tiene instalada, es muy probable que
 mate el demonio ssh. Si est� actualizando mediante una sesi�n ssh, puede
 no ser muy buena idea.
 .
 Puede arreglarlo a�adiendo "--pidfile /var/run/sshd.pid" a la l�nea
 'start-stop-daemon' en la secci�n 'stop' del fichero.

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
 ForwardX11 y ForwardAgent puestas a ``off''.
 .
 Puede activar estas opciones para los servidores en los que conf�e, en
 los ficheros de configuraci�n o con la opci�n -X en l�nea de comandos.
 .
 Puede encontrar m�s detalles en /usr/share/doc/ssh/README.Debian.

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that
 package.
Description-es: Aviso: tiene rsh-server instalado (no es una buena idea)
 Tener rsh-server instalado representa un menoscabo de la seguridad que
 probablemente desea obtener instalando ssh. Le aconsejar�a borrar ese
 paquete.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-es: Aviso: tiene telnetd instalado (no es una buena idea)
 Le aconsejar�a borrar el paquete telnetd si no necesita realmente
 ofrecer acceso mediante telnet o instalar telnetd-ssl para que las
 contrase�as, login y dem�s informaci�n de las sesiones telnet no viajen
 sin cifrar por la red.

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
 logging in to remote systems.  It will also mean that the source port will
 be above 1024, which may confound firewall rules you've set up.
 .
 If in doubt, I suggest you install it with SUID.  If it causes problems
 you can change your mind later by running:   dpkg-reconfigure ssh 
Description-es: �Desea hacer que /usr/bin/ssh se ejecute con permisos de root?
 Tiene la posibilidad de instalar el cliente ssh setuid root.
 .
 Instalarlo setuid root le permitir� usar la autentificaci�n
 Rhosts/RhostsRSA, pero no podr� usar socks mediante el truco de
 LD_PRELOAD. Tradicionalmente, este ha sido el enfoque m�s habitual.
 .
 Si no hace ssh setuid, podr� usar socks pero la autentificaci�n
 Rhosts/RhostsRSA dejar� de funcionar, lo cual le puede impedir el acceso
 a sistemas remotos. Tambi�n significar� que el puerto de origen se
 encontrar� por encima del 1024, lo cual puede confundir a las reglas del
 cortafuegos que haya configurado.
 .
 Si tiene dudas, le sugiero que lo instale sin setuid. Si esto le causa
 alg�n problema puede cambiar posteriormente la configuraci�n ejecutando:
 dpkg-reconfigure ssh

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
 Generalmente, el servidor de ssh se ejecuta para permitir el acceso
 mediante ssh.
 .
 Si s�lo est� interesado en usar el cliente ssh en conexiones salientes de
 esta m�quina, y no quiere acceder a ella mediante ssh, entonces puede
 desactivar sshd.

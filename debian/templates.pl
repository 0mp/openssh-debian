Template: ssh/privsep_tell
Type: note
Description: Privilege separation
 This version of OpenSSH contains the new privilege separation
 option. This significantly reduces the quantity of code that runs as
 root, and therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any
 PAM session modules that need to run as root (pam_mkhomedir, for
 example) will fail, and PAM keyboard-interactive authentication 
 won't work.
 .
 Privilege separation is turned on by default, so if you decide you
 want it turned off, you need to add "UsePrivilegeSeparation no" to
 /etc/ssh/sshd_config.
 .
 NB! If you are running a 2.0 series Linux kernel, then privilege
 separation will not work at all, and your sshd will fail to start
 unless you explicitly turn privilege separation off.
Description-pl: Separacja uprawnie�
 Ta wersja OpenSSH zawiera now� opcj� separacji uprawnie�. Znacz�co
 zmniejsza ona ilo�� kodu, kt�ry jest uruchamiany jako root i co
 za tym idzie redukuje efekty luk bezpiecze�stwa w sshd.
 .
 Niestety separacja uprawnie� �le reaguje z PAMem. Jakikolwiek modu�
 sesji PAM, kt�ry musi by� uruchamiany jako root (pam_mkhomedir, na
 przyk�ad) zawiedzie. Nie b�dzie dzia�a� r�wnie� interaktywna 
 autentykacja z klawiatury (keyboard-interactive authentication).
 .
 Separacja uprawnie� jest domy�lnie w��czona, wi�c je�li zdecydujesz
 si� j� wy��czy�, musisz doda� "UsePrivilegeSeparation no" do pliku
 /etc/ssh/sshd_config.
 .
 UWAGA! Je�eli u�ywasz j�dra Linux'a z serii 2.0, to separacja uprawnie�
 w og�le nie b�dzie dzia�a� i sshd nie wystartuje dop�ki w�asnor�cznie
 nie wy��czysz separacji uprawnie� w /etc/ssh/sshd_config.

Template: ssh/privsep_ask
Type: boolean
Default: true
Description: Enable Privilege separation
 This version of OpenSSH contains the new privilege separation
 option. This significantly reduces the quantity of code that runs as
 root, and therefore reduces the impact of security holes in sshd.
 .
 Unfortunately, privilege separation interacts badly with PAM. Any
 PAM session modules that need to run as root (pam_mkhomedir, for
 example) will fail, and PAM keyboard-interactive authentication 
 won't work.
 .
 Since you've opted to have me generate an sshd_config file for you,
 you can choose whether or not to have Privilege Separation turned on
 or not. Unless you are running 2.0 (in which case you *must* say no
 here or your sshd won't start at all) or know you need to use PAM
 features that won't work with this option, you should say yes here.
Description-pl: W��czenie separacji uprawnie�
 Ta wersja OpenSSH zawiera now� opcj� separacji uprawnie�. Znacz�co
 zmniejsza ona ilo�� kodu, kt�ry jest uruchamiany jako root i co
 za tym idzie redukuje efekty luk bezpiecze�stwa w sshd.
 .
 Niestety separacja uprawnie� �le reaguje z PAMem. Jakikolwiek modu�
 sesji PAM, kt�ry musi by� uruchamiany jako root (pam_mkhomedir, na
 przyk�ad) zawiedzie. Nie b�dzie dzia�a� r�wnie� interaktywna 
 autentykacja z klawiatury (keyboard-interactive authentication).
 .
 Zdecydowa�e� si� na to abym wygenerowa� dla ciebie plik sshd_config,
 i mo�esz wybra� czy chcesz w��czy� Separacj� Uprawnie�, czy te� nie.
 Je�li nie u�ywasz j�dra z serii 2.0 (w kt�rym to przypadku *musisz*
 odpowiedzie� tutaj 'nie' albo sshd w og�le nie ruszy) i je�li nie 
 musisz korzysta� z mo�liwo�ci PAMa, kt�re nie b�d� dzia�a�y z t� opcj�,
 powiniene� odpowiedzie� tutaj 'tak'.

Template: ssh/new_config
Type: boolean
Default: true
Description: Generate new configuration file
 This version of OpenSSH has a considerably changed configuration file from 
 the version shipped in Debian 'Potato', which you appear to be upgrading from.
 I can now generate you a new configuration file (/etc/ssh/sshd.config), which
 will work with the new server version, but will not contain any customisations
 you made with the old version. 
 .
 Please note that this new configuration file will set the value of 
 'PermitRootLogin' to yes (meaning that anyone knowing the root password can
 ssh directly in as root). It is the opinion of the maintainer that this is
 the correct default (see README.Debian for more details), but you can always
 edit sshd_config and set it to no if you wish.
 .
 It is strongly recommended that you let me generate a new configuration file 
 for you.
Description-pl: Wygeneruj nowy plik konfiguracyjny
 W tej wersji OpenSSH zmieni� si� plik konfiguracyjny w stosunku do wersji 
 dostarczanej z Debianem 'Potato', kt�r� zdajesz si� aktualizowa�. Mog� teraz 
 wygenerowa� nowy plik konfiguracyjny (/etc/ssh/sshd.config), kt�ry b�dzie
 dzia�a� z now� wersj� serwera, ale nie b�dzie zawiera� �adnych dokonanych
 przez ciebie w starej wersji zmian.
 .
 Zauwa� prosz�, �e nowy plik konfiguracyjny b�dzie ustawia� warto�� opcji
 'PermitRootLogin' na 'tak' (co oznacza, �e ka�dy kto zna has�o root'a mo�e
 zdalnie zalogowa� si� przez ssh jako root). W opinii opiekuna pakietu to
 jest poprawna warto�� domy�lna (szczeg�y w README.Debian), ale mo�esz sobie
 wyedytowa� sshd_config i ustawi� t� opcj� na 'nie' je�li si� z t� opini� nie
 zgadzasz.
 .
 Jest bardzo wskazane aby� pozwoli� mi wygenerowa� nowy plik konfiguracyjny.

Template: ssh/protocol2_only
Type: boolean
Default: true
Description: Allow SSH protocol 2 only
 This version of OpenSSH supports version 2 of the ssh protocol, which
 is much more secure.  Disabling ssh 1 is encouraged, however this
 will slow things down on low end machines and might prevent older
 clients from connecting (the ssh client shipped with "potato" is affected).
 .
 Also please note that keys used for protocol 1 are different so you will
 not be able to use them if you only allow protocol 2 connections.
 .
 If you later change your mind about this setting, README.Debian has 
 instructions on what to do to your sshd_config file.
Description-pl: Zezwalaj wy��cznie na wersj� 2 protoko�u SSH
 Ta wersja OpenSSH wspiera drug� wersj� protoko�u ssh, kt�ra jest znacznie
 bardziej bezpieczna. Wy��czenie ssh 1 jest zalecane, cho� spowalnia to
 dzia�anie na starych maszynach i mo�e uniemo�liwi� po��czenie starszym
 wersjom klient�w (dotyczy to np. klienta ssh do��czanego do "potato").
 .
 Ponadto, zauwa� prosz�, �e klucze u�ywane przez protok� 1 s� inne, wi�c
 nie b�dziesz m�g� ich u�ywa� je�li zezwolisz na korzystanie wy��cznie z
 wersji 2 protoko�u.
 .
 Je�li p�niej zmienisz zdanie co do tego ustawienia, to instrukcje co 
 zmieni� w sshd_config znajduj� si� w README.Debian.

Template: ssh/ssh2_keys_merged
Type: note
Description: ssh2 keys merged in configuration files
 As of version 3 OpenSSH no longer uses separate files for ssh1 and
 ssh2 keys. This means the authorized_keys2 and known_hosts2 files
 are no longer needed. They will still be read in order to maintain
 backwards compatibility
Description-pl: klucze ssh2 w��czone do plik�w konfiguracyjnych
 Pocz�wszy od wersji 3 OpenSSH nie u�ywa ju� osobnych plik�w dla kluczy
 ssh1 i ssh2. Oznacza to, �e pliki authorized_keys2 i known_hosts2 nie
 s� ju� potrzebne. B�d� one jednak odczytywane aby zachowa� wsteczn�
 kompatybilno��.

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
Description-pl: Czy chcesz kontynuowa� (i ryzykowa� zabicie aktywnych sesji ssh) ?
 Zainstalowana w�a�nie wersja /etc/init.d/ssh mo�e zabi� wszystkie dzia�aj�ce
 obecnie kopie sshd. Je�li robisz ten upgrade via ssh, to by�aby Z�a Rzecz(tm).
 .
 Mo�esz to naprawi� dodaj�c "--pidfile /var/run/sshd.pid" do linijki
 start-stop-daemon w sekcji stop tego pliku.

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
Description-pl: UWAGA: Przekazywanie (forwarding) X11 i Autoryzacji jest domy�lnie wy��czone.
 Ze wzgl�d�w bezpiecze�stwa Debianowa wersja ssh ma ForwardX11 i ForwardAgent
 ustawione  domy�lnie na 'off'.
 .
 Dla zaufanych serwer�w mo�esz w��czy� te opcje w pliku konfiguracyjnym lub
 przy pomocy opcji -X z linii komend.
 .
 Wi�cej szczeg��w znajdziesz w /usr/share/doc/ssh/README.Debian.

Template: ssh/insecure_rshd
Type: note
Description: Warning: rsh-server is installed --- probably not a good idea
 having rsh-server installed undermines the security that you were probably
 wanting to obtain by installing ssh.  I'd advise you to remove that package.
Description-pl: Uwaga: serwer rsh jest zainstalowany --- prawdopodobnie nienajlepszy pomys�
 Posiadanie zainstalowanego serwera rsh podminowuje zabezpieczenia, kt�re 
 prawdopodobnie starasz si� uzyska� instaluj�c ssh. Radzi�bym usun�� ten 
 pakiet.

Template: ssh/insecure_telnetd
Type: note
Description: Warning: telnetd is installed --- probably not a good idea
 I'd advise you to either remove the telnetd package (if you don't actually
 need to offer telnet access) or install telnetd-ssl so that there is at
 least some chance that telnet sessions will not be sending unencrypted
 login/password and session information over the network.
Description-pl: Uwaga: telnetd jest zainstalowany --- prawdopodobnie nienajlepszy pomys�
 Radzi�bym albo usun�� pakiet telnetd (je�li nie potrzebujesz koniecznie
 udost�pnia� telnet'a) albo zainstalowa� telnetd-ssl aby by�a cho� szansza,
 �e sesje telnet nie b�d� przesy�a� niezaszyfrowanego loginu/has�a oraz 
 danych sesji przez sie�.

Template: ssh/encrypted_host_key_but_no_keygen
Type: note
Description: Warning: you must create a new host key
 There is an old /etc/ssh/ssh_host_key, which is IDEA encrypted.
 OpenSSH can not handle this host key file, and I can't find the
 ssh-keygen utility from the old (non-free) SSH installation.
 .
 You will need to generate a new host key.
Description-pl: Uwaga: musisz utworzy� nowy klucz hosta 
 Istnieje stary /etc/ssh/ssh_host_key, kt�ry jest zaszyfrowany przez
 IDEA. OpenSSH nie umie korzysta� z tak zaszyfrowanego klucza, a nie
 mo�e znale�� polecenia ssh-keygen ze starego SSH (non-free).
 .
 B�dziesz musia� wygenerowa� nowy klucz hosta.

Template: ssh/SUID_client
Type: boolean
Default: true
Description: Do you want /usr/lib/ssh-keysign to be installed SUID root?
 You have the option of installing the ssh-keysign helper with the SUID
 bit set.
 .
 If you make ssh-keysign SUID, you will be able to use SSH's Protocol 2
 host-based authentication.
 .
 If in doubt, I suggest you install it with SUID.  If it causes
 problems you can change your mind later by running:   dpkg-reconfigure ssh 
Description-pl: Czy chcesz aby /usr/lib/ssh-keysign by� zainstalowany jako SUID root? 
 Masz mo�liwo�� zainstalowania pomocniczego programu ssh-keysign z w��czonym
 bitem SETUID.
 .
 Je�li uczynisz ssh-keysign SUIDowym, b�dziesz m�g� u�ywa� opartej na hostach
 autentykacji drugiej wersji protoko�u SSH.
 .
 Je�li masz w�tpliwo�ci, radz� zainstalowa� go z SUIDem. Je�li to sprawia
 problemy, mo�esz zmieni� swoje zdanie uruchamiaj�c p�niej polecenie:
 dpkg-reconfigure ssh

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
Description-pl: Czy chcesz uruchamia� serwer sshd ?
 Ten pakiet zawiera zar�wno klienta ssh, jak i serwer sshd.
 .
 Normalnie serwer sshd (Secure Shell Server) b�dzie uruchomiony aby
 umo�liwi� zdalny dost�p przez ssh.
 .
 Je�li jeste� zainteresowny u�ywaniem wy��cznie klienta ssh dla po��cze�
 wychodz�cych z tej maszyny, i nie chcesz si� na ni� logowa� przy pomocy
 ssh, to mo�esz teraz wy��czy� serwer sshd.

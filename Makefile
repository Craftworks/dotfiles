INSTALL=./_install.sh
UNINSTALL=./_uninstall.sh

install: install-bash install-vim install-screen install-git install-mysql

uninstall: uninstall-bash uninstall-vim uninstall-screen uninstall-git uninstall-mysql

install-bash:
	$(shell $(INSTALL) .bashrc)
	$(shell $(INSTALL) .bashrc-linux)
	$(shell $(INSTALL) .bashrc-darwin)
	$(shell $(INSTALL) .bash_aliases)
	$(shell $(INSTALL) .bash_aliases-linux)
	$(shell $(INSTALL) .bash_aliases-darwin)
	$(shell $(INSTALL) .bash_profile)
uninstall-bash:
	$(shell $(UNINSTALL) .bashrc)
	$(shell $(UNINSTALL) .bash_aliases)
	$(shell $(UNINSTALL) .bash_profile)

install-vim:
	$(shell $(INSTALL) .vim)
	$(shell $(INSTALL) .vimrc)
uninstall-vim:
	$(shell $(UNINSTALL) .vim)
	$(shell $(UNINSTALL) .vimrc)

install-screen:
	$(shell $(INSTALL) .screenrc)
uninstall-screen:
	$(shell $(UNINSTALL) .screenrc)

install-git:
	$(shell $(INSTALL) .gitconfig)
	$(shell $(INSTALL) .gitignore)
uninstall-git:
	$(shell $(UNINSTALL) .gitconfig)
	$(shell $(UNINSTALL) .gitignore)

install-mysql:
	$(shell $(INSTALL) .my.cnf)
uninstall-mysql:
	$(shell $(UNINSTALL) .my.cnf)


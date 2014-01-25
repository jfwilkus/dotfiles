
INSTALL_FILE=install -m 644 -o $(LOGNAME) -g staff

all:
	$(INSTALL_FILE) bash_profile $(HOME)/.bash_profile
	$(INSTALL_FILE) bashrc $(HOME)/.bashrc
	$(INSTALL_FILE) profile $(HOME)/.profile
	$(INSTALL_FILE) vimrc $(HOME)/.vimrc
	$(INSTALL_FILE) gitconfig $(HOME)/.gitconfig
	$(INSTALL_FILE) gemrc $(HOME)/.gemrc
	$(INSTALL_FILE) minicpanrc $(HOME)/.minicpanrc
	$(INSTALL_FILE) perltidyrc $(HOME)/.perltidyrc
	-if [ ! -d ~/.calendar ]; then mkdir ~/.calendar; fi
	$(INSTALL_FILE) calendar $(HOME)/.calendar/calendar

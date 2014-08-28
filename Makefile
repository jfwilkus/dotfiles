
OS=$(shell uname -s)

ifeq ($(OS),Linux)
	GROUP=wheel
endif

LOGNAME?=jfwilkus
GROUP?=staff

INSTALL_FILE=install -m 644 -o $(LOGNAME) -g $(GROUP)

FILES+=.bashrc
FILES+=.bash_profile
FILES+=.profile
FILES+=.vimrc
FILES+=.gitconfig
FILES+=.gemrc
FILES+=.minicpanrc
FILES+=.perltidyrc

.PHONY: $(FILES)

help:
	@echo
	@echo "USAGE: make [all|help]"
	@echo
	@echo -e "\tall\t\tInstalls dotfiles"
	@echo

all: $(FILES)

$(FILES):
	$(INSTALL_FILE) $@ $(HOME)/$@

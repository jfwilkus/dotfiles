
OS=$(shell uname -s)

ifeq ($(OS),Linux)
	GROUP=wheel
endif

ifeq ($(OS),Darwin)
	ECHO=echo
endif


LOGNAME?=jfwilkus
GROUP?=staff
ECHO?=echo -e
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
	@$(ECHO)
	@$(ECHO) "USAGE: make [all|help]"
	@$(ECHO)
	@$(ECHO) "\tall\t\tInstalls dotfiles"
	@$(ECHO)

all: $(FILES)

$(FILES):
	$(INSTALL_FILE) $@ $(HOME)/$@


OS=$(shell uname -s)

ifeq ($(OS),Linux)
	GROUP=wheel
endif

ifeq ($(OS),Darwin)
	ECHO=echo
endif

ifeq ($(OS),OpenBSD)
	ECHO=echo
	GROUP=wheel
endif

LOGNAME?=jfwilkus
GROUP?=staff
ECHO?=echo -e

INSTALL_FILE=install -m 644 -o $(LOGNAME) -g $(GROUP)
INSTALL_SCRIPT=install -m 755 -o $(LOGNAME) -g $(GROUP)

SCRIPTS+=.bashrc
SCRIPTS+=.bash_profile
SCRIPTS+=.profile

FILES+=.vimrc
FILES+=.gitconfig
FILES+=.gemrc
FILES+=.minicpanrc
FILES+=.perltidyrc
FILES+=.perlcriticrc

.PHONY: $(FILES) $(SCRIPTS)

help:
	@$(ECHO)
	@$(ECHO) "USAGE: make [all|help]"
	@$(ECHO)
	@$(ECHO) "\tall\t\tInstalls dotfiles"
	@$(ECHO)

all: $(FILES) $(SCRIPTS)

$(FILES):
	$(INSTALL_FILE) $@ $(HOME)/$@

$(SCRIPTS):
	$(INSTALL_SCRIPT) $@ $(HOME)/$@

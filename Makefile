.DEFAULT_GOAL := show-help
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
.PHONY: show-help
# See <https://gist.github.com/klmr/575726c7e05d8780505a> for explanation.
## This help screen
show-help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)";echo;sed -ne"/^## /{h;s/.*//;:d" -e"H;n;s/^## //;td" -e"s/:.*//;G;s/\\n## /---/;s/\\n/ /g;p;}" ${MAKEFILE_LIST}|LC_ALL='C' sort -f|awk -F --- -v n=$$(tput cols) -v i=19 -v a="$$(tput setaf 6)" -v z="$$(tput sgr0)" '{printf"%s%*s%s ",a,-i,$$1,z;m=split($$2,w," ");l=n-i;for(j=1;j<=m;j++){l-=length(w[j])+1;if(l<= 0){l=n-i-length(w[j])-1;printf"\n%*s ",-i," ";}printf"%s ",w[j];}printf"\n";}'

.PHONY: install-packages
## Install or update all the packages in the brewfile
install-packages:
	"$(ROOT_DIR)/brew/bin/install"
	"$(ROOT_DIR)/brew/bin/bundle-install"

.PHONY: create-workspace
## Install all required repositories in your local and remote
create-workspace:
	"$(ROOT_DIR)/hub/fork-repositories"

.PHONY: cleanup-workspace
## Remove all repositories from your local and remote
cleanup-workspace:
	"$(ROOT_DIR)/hub/remove-repositories"

.PHONY: setup
## Install and setup all a workstation
setup: install-packages

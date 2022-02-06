.PHONY: help # List all availble make targets
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1		\2/'

.PHONY: all # Build all
all: exit

.PHONY: exit # Build exit.asm
exit:
	scripts/build.sh exit

.PHONY: clean # Remove all build content
clean:
	rm -rf bin


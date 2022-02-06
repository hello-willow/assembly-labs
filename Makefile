.PHONY: build # Build & link selected source file: make build file=<file.asm>
build:
	scripts/build.sh $(file)

.PHONY: dump # Display objdump for selected executable file: make dump file=<executable>
dump:
	scripts/dump.sh $(file)

.PHONY: hw # Run analytics & save to homework: make hw file=<executable> lab=<lab#>
hw:
	scripts/homework.sh $(file) $(lab)

.PHONY: clean # Remove all build content
clean:
	rm -rf bin

.PHONY: help # List all available make targets
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1	\2/'


.PHONY: build # Build & link selected file: make build file=<filename>
build:
	scripts/build.sh $(file)

.PHONY: dump # Display objdump for selected output file: make dump file=<filename>
dump:
	scripts/dump.sh $(file)

.PHONY: hw # Run analytics on output file for selected lab and save to homework/: make hw file=<filename> lab=<lab#>
hw:
	scripts/homework.sh $(file) $(lab)

.PHONY: clean # Remove all build content
clean:
	rm -rf bin

.PHONY: help # List all available make targets
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1	\2/'


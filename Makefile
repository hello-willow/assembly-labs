.PHONY: build # Build & link selected source file: make build file=<file.asm>
build:
	scripts/build.sh $(file)

.PHONY: dump # Display objdump for selected executable: make dump file=<executable>
dump:
	scripts/dump.sh $(file)

.PHONY: info # Get file info & save to analysis dir: make info file=<executable>
info:
	scripts/info.sh $(file)

.PHONY: clean # Delete build content for selected file only: make clean file=<executable>
clean:
	scripts/clean.sh $(file)

.PHONY: broom # Clean sweep & delete all build content
broom:
	rm -rf bin

.PHONY: help # List all available make targets
help:
	@grep '^.PHONY: .* #' Makefile | sed 's/\.PHONY: \(.*\) # \(.*\)/\1	\2/'

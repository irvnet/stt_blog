.PHONY: all install-zola build clean

# Default target
all: install-zola build

# Install Zola
install-zola:
	curl -L -o zola.tar.gz https://github.com/getzola/zola/releases/download/v0.19.0/zola-v0.19.0-x86_64-unknown-linux-gnu.tar.gz
	tar -xvf ./zola.tar.gz
	chmod +x ./zola

# Build the site with Zola
build:
	./zola build

# Clean up downloaded files
clean:
	rm -f zola.tar.gz
	rm -f zola



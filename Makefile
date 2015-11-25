all: usage

usage:
	@echo "make config|build|clean|distclean"

config: clean
	sudo lb config
	@[ ! -d update-environment ] || ( cd update-environment && make )
build: config
	sudo lb build
clean:
	sudo lb clean
	sudo rm -f *.log
	@[ ! -d update-environment ] || ( cd update-environment && make clean )
distclean: clean
	sudo lb clean --purge --all
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum
	sudo rm -f config/binary
	sudo rm -f config/bootstrap
	sudo rm -f config/chroot
	sudo rm -f config/common
	sudo rm -f config/source
	sudo rm -f config/build

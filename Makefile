Project = schilymake
Project_Version = 1.2.5

install :
	cd $(SRCROOT)/cdrtools && smake -r INS_BASE=/usr/local DESTDIR=$(DSTROOT) install

installhdrs :
	@echo No headers to install.

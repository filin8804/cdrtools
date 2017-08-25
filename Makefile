Project = cdrtools
Project_Version = 3.02

install :
	cd $(SRCROOT)/$(Project) && smake -r INS_BASE=/usr/local DESTDIR=$(DSTROOT) install

installhdrs :
	@echo No headers to install.

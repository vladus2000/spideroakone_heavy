FROM vladus2000/arch-yaourt-evil-base
MAINTAINER vladus2000 <docker@matt.land>

COPY shiz/ /

RUN pacman -Syyu --noconfirm && \
	su - evil -c 'yaourt -S --needed --noconfirm lftp python2-boto python2-dropbox python2-gdata python2-gobject deja-dup duply' && \
	chmod +x /startup.sh && \
	cp PKGBUILD terms.txt spideroak-one.install /home/evil/. && \
	su - evil -c 'makepkg -si --noconfirm' && \
	cd /home/evil && \
	rm -rf PKGBUILD spideroak-one.install *.deb *.xz src pkg && \
	rm -rf /var/cache/pacman/pkg/* /var/lib/pacman/sync/*

CMD /bin/bash -c /startup.sh


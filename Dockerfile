FROM vladus2000/arch-yaourt-evil-base
MAINTAINER vladus2000 <docker@matt.land>
RUN su - evil -c 'yaourt -S --needed --noconfirm lftp python2-boto python2-dropbox python2-gdata python2-gobject rsync deja-dup spideroak-one duply'


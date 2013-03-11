# Installing the guest additions

function vbox_additions {
  VBOX_VERSION=$(cat /home/veewee/.vbox_version)
  cd /tmp
  mount -o loop /home/veewee/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
  sh /mnt/VBoxLinuxAdditions.run
  umount /mnt
  rm -rf /home/veewee/VBoxGuestAdditions_*.iso
}

function vmware_additions {
  mount -o loop /home/veewee/linux.iso /mnt
  tar -xvf /mnt/VMwareTools-9.2.2-893683.tar.gz -C /tmp
  umount /mnt
  /tmp/vmware-tools-distrib/vmware-install.pl --default
}

[ -e '/home/veewee/.vmfusion_version' ] && vmware_additions || true
[ -e '/home/veewee/.vbox_version' ] && vbox_additions || true

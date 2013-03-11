# veewee fusion definitions

## Usage

use veewee to build new box:

    git clone git@github.com:nanliu/veewee-definitions.git definitions
    veewee fusion build CentOS-6.3-x86_64-minimal
    veewee fusion halt CentOS-6.3-x86_64-minimal

vagrant fusion requires the following metadata.json file (veewee export does not work for this purpose):

    cat > ~/Documents/Virtual\ Machines.localized/CentOS-6.3-x86_64-minimal.vmwarevm/metadata.json << EOF
    {
      "provider": "vmware_fusion"
    }
    EOF

export box to fusion:

    cd ~/Documents/Virtual Machines.localized/CentOS-6.3-x86_64-minimal.vmwarevm
    tar cvzf CentOS-6.3-x86_64-minimal.box ./*
    vagrant box add centos63 ./CentOS-6.3-x86_64-minimal.box

# README

This is a sample repo to set up an Agda virtual machine image.

This is currently unsupported and untested, I am trying to make this helpful.

This material is released under MIT license.

# To get started

1. Install VirtualBox and vagrant for your OS. VirtualBox manages virtual machines,
vagrant is a front-end script creating them.
2. Checkout this repo.
3. Next, we create a virtual machine called agdaVm based on a standard Ubuntu 16.04 virtual image, available on Vagrant repos.
4. Run `vagrant up` to initialize a virtual machine. This will also install some
   basic tools following `bootstrap.sh`, which should automate more honestly.
   Right now this includes Haskell Stack and Emacs. Candidates include:
  - agda, agda-mode, agda standard library.
4. Run `vagrant ssh` to enter a prompt to the virtual machine.
5. Continue downloading anything you need. You are running under user `ubuntu` and can `sudo` without password (courtesy of the underlying virtual machine default setup), so you can install your preferred Agda version in the way you like just as a normal Linux host.
6. To send files from the host to the guest, you can place files in the repo folder, and they will be available under `/vagrant`. That folder has a special filesystem, so I recommend copying the files out of that folder if you want to, say, build them.
7. Optionally: remove extra packages to reduce VM size (how: TODO).
8. Export virtual machine `agdaVm` to `yourVm.ova` with either the VirtualBox GUI or with command:

```
VBoxManage export agdaVm -o yourVm.ova --manifest --vsys 0
```

7. Test the exported VM file `yourVm.ova` by trying to reimport it according to your instructions (ideally, just double-click on it and follow the VirtualBox wizard). I recommend to document the version of VirtualBox you used to avoid any compatibility problems (though I've not seen major ones).

8. Upload `yourVm.ova` for consumption.

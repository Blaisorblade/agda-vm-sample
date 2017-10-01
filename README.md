# README

This is a sample repo to set up an Agda virtual machine image.

This is currently unsupported and untested, I am trying to make this helpful.

This material is released under MIT license.

# To get started

1. Install VirtualBox and vagrant for your OS. VirtualBox manages virtual machines,
vagrant is a front-end script creating them.
2. Checkout this repo.
3. Next, we create a virtual machine called agdaVm.
4. Run `vagrant up` to initialize a virtual machine. This will also install some
   basic tools following `bootstrap.sh`, which should automate more honestly.
   Right now this includes Haskell Stack and Emacs. Candidates include:
  - agda, agda-mode, agda standard library.
4. Run `vagrant ssh` to enter a prompt to the virtual machine. The repo folder is available under `/vagrant`.
5. Continue configuring anything you need.
6. Export virtual machine `agdaVm` to `yourVm.ova` with either the VirtualBox GUI or with command:

```
VBoxManage export agdaVm -o yourVm.ova --manifest --vsys 0
```

7. Test the exported VM file `yourVm.ova` by trying to reimport it according to your instructions (ideally, just double-click on it and follow the VirtualBox wizard). I recommend to document the version of VirtualBox you used to avoid any compatibility problems (though I've not seen major ones).

8. Upload `yourVm.ova` for consumption.

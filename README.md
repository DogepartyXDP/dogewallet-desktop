DogeWallet - Desktop Wallet
---
DogeWallet is a free wallet which supports Dogecoin and Dogeparty.

Installation Instructions
---
```
Windows : Download DogeWallet.exe, run it, complete the installer.
Mac/OSX : Download DogeWallet.dmg, mount, and drag DogeWallet app to 'Applications' folder
Linux   : Download DogeWallet.tgz, extract it, run DogeWallet/install.sh
```

Build Notes
---
The majority of the building is done via nw-builder :

```shell
npm install nw-builder
```

Edit `build.sh` and change your Mac Developer Identity

Run `build.sh` to handle generating builds on Mac/OSX

Download and copy ffmpeg libraries to latest nwjs cache/* directories

https://github.com/nwjs-ffmpeg-prebuilt/nwjs-ffmpeg-prebuilt/releases

Generate checksum.txt file 
---
```
sha256sum DogeWallet.linux32.tgz > checksums.txt
sha256sum DogeWallet.linux64.tgz >> checksums.txt
sha256sum DogeWallet.osx64.dmg   >> checksums.txt
sha256sum DogeWallet.win32.exe   >> checksums.txt
sha256sum DogeWallet.win64.exe   >> checksums.txt
```


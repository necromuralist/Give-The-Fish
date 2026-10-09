# makemkvcon

> Command-line interface for MakeMKV (https://www.makemkv.com/)

- List drives - DRV:index,visible,enabled,flags,drive name,disc name

`makemkvcon --robot --cache=1 info disc:9999`

- Save disk to the current directory as MKV files

`makemkvcon mkv disc:{{index}} all .`

- Save disk to another directory as MKV files

`makemkvcon mkv disc:{{index}} all {{/absolute-path-to-folder/}}`

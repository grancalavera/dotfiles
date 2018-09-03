# dotfiles

## Setup

```
cd ~/dotfiles
./setup
```

## Todo

- suspend on lid close
- trackpad configuration isn't working:
  trackpad natural scrolling
- https://www.youtube.com/watch?v=j1I63wGcvU4
- mouse cursor is huge when using 4k monitor
- multiple monitor conditional configuration (see https://medium.com/@labruillere/minimal-i3-ubuntu-18-04-ba1bb31436ff
  )

## Issues

- after closing i3 session and the suspending laptop on
  the login screen, laptop didn't wake up after opeing
  the lid again
- then, vscode and code symlinks in snap were lost
- links re-appeared after logging out an logging back
  in using gnome on wayland

some change

## Notes

- https://askubuntu.com/questions/707896/keyboard-settings-wont-stay-on-i3

~ setxkbmap -query
rules: evdev
model: pc105
layout: us,gb
variant: intl,
options: ctrl:nocaps,compose:ralt

## setxkbmap

all options explained:
less /usr/share/X11/xkb/rules/xorg.xml
https://unix.stackexchange.com/questions/43976/list-all-valid-kbd-layouts-variants-and-toggle-options-to-use-with-setxkbmap

rules: evdev
model: pc105
layout: us,gb
variant: intl,
options: caps:ctrl_modifier,ctrl:nocaps,compose:ralt

<option>
  <configItem>
    <name>ctrl:nocaps</name>
    <description>Caps Lock as Ctrl</description>
  </configItem>
</option>

<option>
  <configItem>
    <name>caps:ctrl_modifier</name>
    <description>Caps Lock is also a Ctrl</description>
  </configItem>
</option>

<option>
  <configItem>
    <name>ctrl:swapcaps</name>
    <description>Swap Ctrl and Caps Lock</description>
  </configItem>
</option>

~ setxkbmap -print

xkb_keymap {
xkb_keycodes { include "evdev+aliases(qwerty)" };
xkb_types { include "complete" };
xkb_compat { include "complete" };
xkb_symbols { include "pc+us(intl)+gb:2+inet(evdev)+ctrl(nocaps)+compose(ralt)" };
xkb_geometry { include "pc(pc105)" };
};

### On Wayland

~ setxkbmap -query

rules: evdev
model: pc105
layout: us

~ setxkbmap -print
xkb_keymap {
xkb_keycodes { include "evdev+aliases(qwerty)" };
xkb_types { include "complete" };
xkb_compat { include "complete" };
xkb_symbols { include "pc+us+inet(evdev)" };
xkb_geometry { include "pc(pc105)" };
};

## Using gnome-settings-daemon

https://askubuntu.com/questions/1062713/how-can-i3-use-gnome-settings-in-ubuntu-18-04
https://faq.i3wm.org/question/279/how-do-you-use-i3-comfortably.1.html

## Unrelated stuff

Setting global packages location in yarn:
yarn config set prefix .yarn-packages

cd## Manifest for bionic beaaver

http://releases.ubuntu.com/bionic/ubuntu-18.04.1-desktop-amd64.manifest

## Random maybe useful links

http://rabexc.org/posts/awesome-xautolock-battery
https://medium.com/@labruillere/minimal-i3-ubuntu-18-04-ba1bb31436ff
https://use.fontawesome.com/releases/v5.2.0/fontawesome-free-5.2.0-web.zip
https://www.virtualbox.org/manual/ch04.html#idm2100
https://askubuntu.com/questions/408784/after-doing-a-sudo-apt-get-install-app-where-does-the-application-get-stored
https://help.ubuntu.com/community/VirtualBox/GuestAdditions
https://www.stefaanlippens.net/bashrc_and_others/

## Running a gnome session and i3

Recommended
http://zork.net/~st/jottings/gnome-i3.html

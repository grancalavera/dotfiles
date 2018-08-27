#!/usr/bin/env bash
echo "$(date): .xinitrc executed" >> x11.log
[ -f ~/.xprofile ] && . ~/.xprofile

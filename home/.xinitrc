#!/usr/bin/env bash
echo "$(date): .xinitrc executed"
[ -f ~/.xprofile ] && . ~/.xprofile

set -e

EXTERNAL_OUTPUT="DP1"
INTERNAL_OUTPUT="eDP1"
MONITOR_MODE_DAT="/tmp/monitor_mode.dat"

function saveMonitorMode {
  local MODE=${1}
  echo "set monitor mode to ${MODE}"
  echo "${MODE}" > "${MONITOR_MODE_DAT}"
}

function modeAll {
  xrandr \
    --output $INTERNAL_OUTPUT --auto --pos 0x1080\
    --output $EXTERNAL_OUTPUT --auto --pos 1920x0
  saveMonitorMode "ALL"
}

function modeInternal {
  xrandr \
    --output $INTERNAL_OUTPUT --auto \
    --output $EXTERNAL_OUTPUT --off
  saveMonitorMode "INTERNAL"
}

function modeExternal {
  xrandr \
    --output $INTERNAL_OUTPUT --off \
    --output $EXTERNAL_OUTPUT --auto
  saveMonitorMode "EXTERNAL"
}

function modeClones {
  xrandr \
    --output $INTERNAL_OUTPUT --auto \
    --output $EXTERNAL_OUTPUT --auto --same-as $INTERNAL_OUTPUT
  saveMonitorMode "CLONES"
}

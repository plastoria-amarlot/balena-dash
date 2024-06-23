#!/bin/bash
if [ ! -z ${ENABLE_DISPLAY_TIMER+x} ] && [ "$ENABLE_DISPLAY_TIMER" -eq "1" ]
then
  (crontab -l; echo "${DISPLAY_ON:-0 8 * * *} /usr/src/backlight_on.sh") | crontab -
  (crontab -l; echo "${DISPLAY_OFF:-0 23 * * *} /usr/src/backlight_off.sh") | crontab -
fi

crond -f

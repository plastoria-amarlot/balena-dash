#!/bin/bash
if [ ! -z ${ENABLE_DISPLAY_TIMER+x} ] && [ "$ENABLE_DISPLAY_TIMER" -eq "1" ]
then
  (crontab -l; echo "${DISPLAY_ON:-0 7 * * *} /usr/src/display_on.sh") | crontab -
  (crontab -l; echo "${DISPLAY_OFF:-0 18 * * *} /usr/src/display_off.sh") | crontab -
fi

crond -f

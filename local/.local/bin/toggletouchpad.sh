#!/bin/bash
if xinput list-props 12 | grep "Device Enabled (153):.*1" >/dev/null
then
  xinput disable 12
else
  xinput enable 12
fi

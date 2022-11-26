#! /vendor/bin/sh
# Set vendor.hw property to run device specific services
#
# grep the device name from /proc/device-tree/compatible

GT58=`/vendor/bin/cat /proc/device-tree/compatible | /vendor/bin/grep gt58`
RB5=`/vendor/bin/cat /proc/device-tree/compatible | /vendor/bin/grep rb5`

if [ ! -z "${RB5}" ]; then
    setprop vendor.hw rb5
elif [ ! -z "${GT58}" ]; then
    setprop vendor.hw gt58
else
    setprop vendor.hw db845c
fi

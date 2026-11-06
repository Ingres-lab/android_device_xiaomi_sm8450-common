#!/vendor/bin/sh
#
# SPDX-FileCopyrightText: Neo
# SPDX-License-Identifier: Apache-2.0
#
# Apply persist.sys.neo.selinux (set by NeoParts).

case "$(getprop persist.sys.neo.selinux)" in
    permissive) echo 0 > /sys/fs/selinux/enforce ;;
    enforcing) echo 1 > /sys/fs/selinux/enforce ;;
esac

#!/bin/bash
cat /etc/group | awk -F: '{print $1, $3, $4}' | while read group gid members; do
    members=$members,$(awk -F: "\$4 == $gid {print \",\" \$1}" /etc/passwd);
    echo "$group: $members" | sed 's/,,*/ /g';
done

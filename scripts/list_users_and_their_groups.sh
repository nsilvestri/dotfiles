#!/bin/bash
for user in $(awk -F: '{print $1}' /etc/passwd); do groups $user; done

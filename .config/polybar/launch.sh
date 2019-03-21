#!/bin/bash

pgrep polybar | xargs kill
polybar -r top

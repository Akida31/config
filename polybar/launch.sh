#!/bin/bash

killall polybar
polybar -q main & disown
polybar -q second & disown

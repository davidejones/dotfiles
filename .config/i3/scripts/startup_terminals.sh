#!/bin/bash

i3-msg 'workspace 1'
i3-sensible-terminal &

sleep 0.5
i3-msg 'split h'
sleep 0.5
i3-sensible-terminal -e bash -c 'fastfetch; exec bash' &

sleep 0.5
i3-msg 'split v'
sleep 0.5
i3-sensible-terminal -e bash -c 'htop; exec bash' &


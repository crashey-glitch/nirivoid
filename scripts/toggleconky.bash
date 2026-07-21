#!/bin/bash

# Cerca solo l'eseguibile binario esatto di conky
if pgrep -x conky > /dev/null; then
    pkill -9 -x conky
else
    # nohup e disown staccano conky dal terminale/script
    nohup conky >/dev/null 2>&1 &
    disown
fi


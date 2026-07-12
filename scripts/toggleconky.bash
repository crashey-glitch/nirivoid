#!/bin/bash

# Controlla se conky è in esecuzione
if pgrep -x "conky" > /dev/null
then
    # Se è attivo, lo chiude
    pkill -x "conky"
else
    # Se non è attivo, lo avvia puntando alla tua configurazione
    conky &
fi

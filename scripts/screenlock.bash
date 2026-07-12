#!/bin/sh

IMAGE="/tmp/screen_lock.png"

# 1. Cattura lo schermo
grim "$IMAGE"

# 2. Sfoca lo sfondo in modo super veloce (effetto pixel/blur moderno)
mogrify -scale 10% -scale 1000% "$IMAGE"

# 3. Avvia swaylock usando l'immagine sfocata e colori moderni/neutrali
swaylock \
  -i "$IMAGE" \
  --inside-color 00000088 \
  --inside-clear-color 00000088 \
  --inside-ver-color 00000088 \
  --inside-wrong-color 220000aa \
  --ring-color ffffff44 \
  --ring-clear-color ffaa00aa \
  --ring-ver-color 00ffaaaa \
  --ring-wrong-color ff0033aa \
  --key-hl-color ffffff88 \
  --line-color 00000000 \
  --separator-color 00000000 \
  --indicator-radius 90 \
  --indicator-thickness 6

# 4. Pulisci il file temporaneo dopo lo sblocco
rm "$IMAGE"


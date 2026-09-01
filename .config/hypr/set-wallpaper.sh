#!/usr/bin/env bash
# Set the wallpaper via hyprpaper's IPC.
#
# WHY THIS EXISTS: hyprpaper 0.8.3 as packaged in Ubuntu 26.04 silently ignores
# ~/.config/hypr/hyprpaper.conf — the daemon starts, opens its IPC socket, and
# draws nothing. Every documented `preload =` / `wallpaper =` spelling was
# tried; none take effect, and `hyprctl hyprpaper preload` reports "Unknown
# hyprpaper request" (the verb was dropped; `wallpaper` loads the image itself).
# Driving it over IPC after startup is the only path that works on this build.
#
# Retries because hyprpaper needs a moment to bind its socket, and exec-once
# gives us no ordering guarantee.
set -uo pipefail

WALLPAPER="${1:-/usr/share/hypr/wall2.png}"

for _ in $(seq 1 25); do
    if hyprctl hyprpaper wallpaper ",${WALLPAPER}" >/dev/null 2>&1; then
        exit 0
    fi
    sleep 0.2
done

echo "set-wallpaper: hyprpaper did not accept the wallpaper after 5s" >&2
exit 1

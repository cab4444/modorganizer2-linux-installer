#!/usr/bin/env bash

if [ -f "$game_installation/Starfield.exe" ]; then
    mv "$game_installation/Starfield.exe" "$game_installation/mo2.exe"
    log_info "Renamed Starfield.exe to mo2.exe"
else
    log_error "Starfield.exe not found in '$game_installation'"
    exit 1
fi

if [ -f "$game_installation/_Starfield.exe" ]; then
    mv "$game_installation/_Starfield.exe" "$game_installation/Starfield.exe"
    log_info "Renamed _Starfield.exe to Starfield.exe"
else
    log_error "_Starfield.exe not found in '$game_installation'"
    exit 1
fi

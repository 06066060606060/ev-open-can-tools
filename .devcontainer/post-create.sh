#!/usr/bin/env bash
set -euo pipefail

# Add the container user to the dialout group for serial port access.
sudo usermod -aG dialout "${REMOTE_USER:-vscode}"

# Pre-install PlatformIO toolchains and libraries so IntelliSense is ready on first open.
~/.platformio/penv/bin/pio pkg install

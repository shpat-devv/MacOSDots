#!/bin/bash

CONFIG_TEMPLATE="$HOME/.config/fastfetch/config-template.jsonc"
CONFIG_DYNAMIC="$HOME/.config/fastfetch/config.jsonc"

PNG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/fastfetch/pngs"
RANDOM_PNG=$(find "$PNG_DIR" -type f -name "*.png" | shuf -n 1)

if [[ -z "$RANDOM_PNG" ]]; then
  echo "No PNG files found in $PNG_DIR! Exiting."
  exit 1
fi

echo "Using logo image: $RANDOM_PNG"

# Replace the placeholder in the config template with the random PNG path
sed "s|__LOGO_PATH__|$RANDOM_PNG|g" "$CONFIG_TEMPLATE" > "$CONFIG_DYNAMIC"

# Run fastfetch with the generated config and chafa
fastfetch --config "$CONFIG_DYNAMIC" --chafa ascii


for dotfile in "${SCRIPT_DIR}/config"/.??*; do
	[[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
	[[ "$dotfile" == *.swp ]] && continue

	ln -fnsv "$dotfile" "$HOME"
done

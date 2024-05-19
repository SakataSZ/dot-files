SSH_KEY_PATH="$HOME/.ssh"

if [ ! -d "$SSH_KEY_PATH" ]; then
	mkdir "$SSH_KEY_PATH"
fi

if [ ! -f "$SSH_KEY_PATH/id_rsa" ]; then
	ssh-keygen -N '' -f ${SSH_KEY_PATH}/id_rsa
fi

if gh auth status &>/dev/null; then
	echo "You are authenticated with GitHub CLI."
else
	echo "You are not authenticated with GitHub CLI."
	echo "Please run 'gh auth login' to authenticate."
	gh auth login -w
fi

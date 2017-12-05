
#!/bin/sh
#
# Oh-my-zsh
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which zsh)
then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

exit 0

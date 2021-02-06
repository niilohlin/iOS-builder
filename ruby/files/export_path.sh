

touch $HOME/.profile

if ! grep -q "\$HOME/.rbenv/bin" $HOME/.zshrc; then
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
fi

touch $HOME/.zshrc
if ! grep -q "rbenv init -" $HOME/.zshrc; then
    echo 'eval "$(rbenv init -)"' >> $HOME/.zshrc
fi

source $HOME/.profile
source $HOME/.zshrc

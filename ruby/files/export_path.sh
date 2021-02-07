#!/bin/sh

if ! grep -q "\$HOME/.rbenv/bin" $HOME/.zshrc; then
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
    echo 'changed'
fi

if ! grep -q "rbenv init -" $HOME/.zshrc; then
    echo 'eval "$(rbenv init -)"' >> $HOME/.zshrc
    echo 'changed'
fi


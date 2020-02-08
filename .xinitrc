export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec i3

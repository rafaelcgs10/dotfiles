zimfw() { source /home/rafael/.zim/zimfw.zsh "${@}" }
fpath=(/home/rafael/.zim/modules/git/functions /home/rafael/.zim/modules/utility/functions /home/rafael/.zim/modules/git-info/functions ${fpath})
autoload -Uz git-alias-lookup git-branch-current git-branch-delete-interactive git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw coalesce git-action git-info
source /home/rafael/.zim/modules/environment/init.zsh
source /home/rafael/.zim/modules/git/init.zsh
source /home/rafael/.zim/modules/input/init.zsh
source /home/rafael/.zim/modules/termtitle/init.zsh
source /home/rafael/.zim/modules/utility/init.zsh
source /home/rafael/.zim/modules/gitster/gitster.zsh-theme
source /home/rafael/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /home/rafael/.zim/modules/completion/init.zsh
source /home/rafael/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/rafael/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/rafael/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
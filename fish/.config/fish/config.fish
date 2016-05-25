set -g -x fish_greeting ''

# Tomorrow-Night theme, from https://gist.githubusercontent.com/alexwllms/7959105/raw/b62a48dd4aa712bac520ba9ce80867590813db6f/Tomorrow%2520Night%2520Theme%2520for%2520Fish%2520(shell)
set fish_color_normal c5c8c6
set fish_color_command 81a2be
set fish_color_quote de935f
set fish_color_redirection b294bb
set fish_color_end b294bb
set fish_color_error cc6666
set fish_color_param 81a2be
set fish_color_comment 969896
set fish_color_match 8abeb7
set fish_color_search_match b294bb
set fish_color_operator 8abeb7
set fish_color_escape 8abeb7
set fish_color_cwd b5bd68

set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH $HOME/google-cloud-sdk/bin
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

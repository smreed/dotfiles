function fish_prompt --description 'Write out the prompt'
	# Just calculate these once, to save a few cycles when displaying the prompt
   if not set -q __fish_prompt_normal
       set -g __fish_prompt_normal (set_color normal)
   end

   if not set -q __fish_prompt_cwd
       set -g __fish_prompt_cwd (set_color $fish_color_cwd)
   end

   echo -n -s "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" ' ' (kube_info) (__fish_git_prompt) ' > '
end

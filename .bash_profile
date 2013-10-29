# Load ~/.bash_prompt and ~/.aliases 
for file in ~/.{bash_prompt,aliases}; do
        [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Display Git Branch or Tag Names in your Bash Prompt
source ~/.bash/git-prompt
PS1='\[\033[1;31m\]\u\[\033[1;37m\] @ \[\033[1;33m\]\H \[\033[0m\]:\[\033[1;32m\]\w\[\033[0m\] \[\033[1;92m\]\[\033[1;36m\]$(parse_git_branch_or_tag) $ '
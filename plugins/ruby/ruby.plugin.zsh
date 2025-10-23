# Run sudo gem on the system ruby, not the active ruby
alias sgem='sudo gem'

# Find ruby file
alias rfind='find . -name "*.rb" | xargs grep -n'

# Shorthand Ruby
alias rb="ruby"

# Gem Command Shorthands
alias gein="gem install"
alias geun="gem uninstall"
alias geli="gem list"
alias gei="gem info"
alias geiall="gem info --all"
alias geca="gem cert --add"
alias gecr="gem cert --remove"
alias gecb="gem cert --build"
alias geclup="gem cleanup -n"
alias gegi="gem generate_index"
alias geh="gem help"
alias gel="gem lock"
alias geo="gem open"
alias geoe="gem open -e"
alias rrun="ruby -e"
alias rserver="ruby -run -e httpd . -p 8080" # requires webrick

function ruby_prompt_info() {
  # 检查是否安装了 ruby 命令
  command -v ruby >/dev/null 2>&1 || return

  # 获取 Ruby 版本号（只保留前几位）
  local ruby_version="$(ruby -v 2>/dev/null | awk '{print $2}')"
  [[ -z $ruby_version ]] && return

  # 输出主题前后缀包裹的提示信息
  echo "${ZSH_THEME_RUBY_PROMPT_PREFIX=[}${ruby_version}${ZSH_THEME_RUBY_PROMPT_SUFFIX=]}"
}

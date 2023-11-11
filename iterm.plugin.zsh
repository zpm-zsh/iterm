#!/usr/bin/env zsh

ZSH_CACHE_DIR="${ZSH_CACHE_DIR:-${TMPDIR:-/tmp}/zsh-${UID:-user}}"
ITERM_CACHE_FILE="${ZSH_CACHE_DIR}/iterm.zsh"

source "${ITERM_CACHE_FILE}" 2>/dev/null || {
  test -e "${HOME}/.iterm2_shell_integration.zsh" && cat "${HOME}/.iterm2_shell_integration.zsh" >> "${ITERM_CACHE_FILE}"

  source "${ITERM_CACHE_FILE}"
}

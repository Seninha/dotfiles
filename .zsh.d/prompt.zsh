#!/usr/bin/zsh
#
# ZSH_prompt
# =============================================================================
#
# This file creates a modular Prompt made with "blocks" of variables.
#
# * In `zsh` you don't  need to  use  Escape  Code to  change the color  of the
#     prompt. The "Prompt Escapes" do it by theirself!
#
# * In  `zsh`  you don't  need to use  "if"  conditions to  generate  blocks of
#     Characters.  The `zsh` has a builtin Prompt Escape that has a conditional
#     behaviour, like "if"!
#


# Compound blocks
# ==============================================================================

## Default Color
_NONE="%f%k%b%u%s"	# Reset color to terminal defaults

## Color Blocks
_RED="${NONE}%B%F{red}"
_BLU="${NONE}%B%F{blue}"
_YELW="${NONE}%F{yellow}"

## Main blocks
_STATUS="${NONE}%(0?.%B%F{blue}.%B%K{red})"
_EXIT="%(0?.. (%?%))"
_JOBS="%(0j..( %(1j.%j job.%j jobs)%))"
_WHO="%n@%m"
_TIME="%D{%K:%M}"
_DIR="%~ [$(ls | wc -l) arquivos]"
_CMD="%i%(!.#.$) "


# Prompt Itself
# ==============================================================================

export PS1="
${_RED}┌─[${_TIME}]──[\
${_NONE}${_STATUS}${_WHO}${_EXIT}\
${_NONE}${_RED}] \
${_NONE}${_YELW}${_DIR}
${_RED}└─€\
${_NONE}${_JOBS} ${_CMD}"


# Right Prompt
# ==============================================================================

# Show current git branch and git branch status
function git_prompt {
	git status &> /dev/null

	if [[ $? != 128 ]] ; then
		git_branch=
		git_status=
		git_remote=
		git_color=
		git_count=

		local git_branch=$(git status 2> /dev/null | grep -i '^on branch' | cut -d' ' -f3-)

		local git_status="staged"
		git status | grep -i '^nothing to commit'  &> /dev/null && local git_status="commited"
		git status | grep -i '^changes not staged' &> /dev/null && local git_status="modified"
		git status | grep -i '^untracked files'    &> /dev/null && local git_status="modified"

		git status | head -4 | grep -i 'ahead'     &> /dev/null && local git_remote="→"
		git status | head -4 | grep -i 'diverged'  &> /dev/null && local git_remote="<"
		git status | head -4 | grep -i 'behind'    &> /dev/null && local git_remote="←"

		[[ $git_status = "modified" ]] && local git_color="%B%F{red}"
		[[ $git_status = "commited" ]] && local git_color="%B%F{green}"
		[[ $git_status = "staged" ]]   && local git_color="%B%F{yellow}"

		if [[ -n $git_branch ]] ; then
			if [[ -n $git_remote ]] ; then
				echo -e "${git_color}(git: ${git_branch} ${git_remote})${NONE}"
			else 
				echo -e "${git_color}(git: ${git_branch})${NONE}"
			fi
		else
			echo -e "${git_color}(git)${NONE}"
		fi
	fi
}

RPROMPT='$(git_prompt)'

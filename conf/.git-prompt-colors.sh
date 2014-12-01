override_git_prompt_colors() {
    GIT_PROMPT_THEME_NAME="Custom" # needed for reload optimization, should be unique
    MY_HN=""
    if [[ ! $HOSTNAME == *".local"* ]]; then
        MY_HN="<${HOSTNAME}>";
    fi
    GIT_PROMPT_START_USER="${MY_HN} _LAST_COMMAND_INDICATOR_ ${Yellow}${PathShort}${ResetColor}"
}

# load the theme
reload_git_prompt_colors "Custom"

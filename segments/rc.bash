### Defaults
_sbp_rc_bg=${_sbp_rc_bg:-$_sbp_color_red}
_sbp_rc_fg=${_sbp_rc_fg:-$_sbp_color_white}

function _sbp_generate_rc_segment {
  local command_value
  if [[ "$_sbp_current_exec_result" -ne 0 && "$_sbp_current_exec_result" -ne 130 ]]; then
    command_value="${_sbp_current_exec_result}"

    _sbp_segment_new_color_bg="$_sbp_rc_bg"
    _sbp_segment_new_color_fg="$_sbp_rc_fg"
    _sbp_segment_new_length="$(( ${#command_value} + 2 ))"
    _sbp_segment_new_value=" ${command_value} "
    _sbp_segment_new_create
  fi
}

function _sbp_timer_start { # Timer of last timer
  if [[ -z "$_sbp_timer_complete" && -z "$_sbp_timer" ]]; then
    _sbp_timer=$SECONDS
  fi
}

function _sbp_timer_stop {
  local seconds=$(( SECONDS - _sbp_timer ))
  _sbp_timer_m=$(( seconds / 60 ))
  _sbp_timer_s=$(( seconds - (60 * _sbp_timer_m) ))
}

function _sbp_trigger_timer_hook {
  _sbp_timer_stop
  unset _sbp_timer
  unset _sbp_timer_complete
}

trap '_sbp_timer_start' DEBUG

# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/lemonfrog/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "rails"; then
  # Create a new window inline within session layout definition.
  new_window "rails server"
  run_cmd "dip rails s"
  new_window "lazygit"
  run_cmd "lazygit"
  new_window "editor"
  run_cmd "nvim"
  new_window "rails console"
  run_cmd "dip rails c"
  new_window "terminal"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session

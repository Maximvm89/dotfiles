# Configs to set some hotkeys on pcoip
defaults write "com.teradici.teradici pcoip client" mac_capture_all_keys 1
defaults write "com.teradici.teradici pcoip client" mac_system_shortcut_capture 0
defaults write "com.teradici.teradici pcoip client" remap_cmd_to_ctrl 0

defaults read "com.teradici.teradici pcoip client" mac_capture_all_keys
defaults read "com.teradici.teradici pcoip client" mac_system_shortcut_capture
defaults read "com.teradici.teradici pcoip client" remap_cmd_to_ctrl

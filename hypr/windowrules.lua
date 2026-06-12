local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = {
      class = ".*" 
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = {
        class = "hyprland-run" 
    },
    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "steam-properties-window",
    match = {
        initial_class = "steam",
        initial_title = "negative:Steam"
    },
    float = true,
    size = {"(monitor_w*0.40)", "(monitor_h*0.8)"},
    move = {"(monitor_w*0.05)", "(monitor_h*0.1)"}
})

hl.window_rule({
    name = "jellyfin",
    match = {
        initial_title = "Jellyfin"
    },
    fullscreen_state = 2,
})

hl.window_rule({
    name = "PiP",
    match = {
        initial_title = "Picture-in-picture"
    },
    float = true,
    pin = true,
    border_size = 0,
    no_follow_mouse = true,
    opacity = "1.0 override 1.0 override 1.0 override",
    size = {"(monitor_w*0.36)", "(monitor_h*0.37)"},
    move  = {"(monitor_w*0.05)", "(monitor_h*0.15)"}
})
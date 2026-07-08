--i confess to using an auto convert tool for .conf -> .lua
--line 318, youll need to replace USER with youre actual user for it to work

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = "1",
})

local terminal = "kitty"
local menu = "rofi -show drun -theme-str 'prompt { enabled: false; }'"


hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})


local mainMod = "SUPER"
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + R", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + + + SHIFT + S", hl.dsp.exec_cmd("quickshell -c hyprquickshot"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + a", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + d", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + w", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + s", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.workspace_rule({
    workspace = "1",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "2",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "3",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "4",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "5",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "6",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "7",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "8",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "9",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "10",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + SHIFT + mouse:272", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume --limit 1.00 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl position 5-"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl position 5+"))


hl.config({
    ecosystem = {
        enforce_permissions = 1,
        no_update_news = true,
    },
    general = {
        gaps_in = 2.5,
        gaps_out = 5,
        border_size = 2, --2
        col = {
            active_border = "rgb(414375)",
            inactive_border = "rgba(00000000)",
        },
        resize_on_border = false,
        allow_tearing = true,
        layout = "dwindle",
        snap = {
            enabled = true,
            window_gap = 30,
            monitor_gap = 10,
            respect_gaps = true,
        },
    },
    dwindle = {
        preserve_split = true,
    },
    decoration = {
        rounding = 10,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 6, 
            passes = 2,
            popups = true,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -0,
        disable_hyprland_logo = true,
    },
    input = {
        kb_layout = "gb",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        numlock_by_default = true,
        follow_mouse = 1,
        accel_profile = "",
        sensitivity = 0, ---0.1
        touchpad = {
            natural_scroll = true,
            scroll_factor = 1,
        },
    },
})

hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("systemctl --user restart xdg-desktop-portal-hyprland")
    hl.exec_cmd("hyprctl dispatch workspace 1")
    hl.exec_cmd("mako")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar -c /home/USER/.config/waybar/configV.jsonc -s /home/USER/.config/waybar/styleV.css") --replace this with your actual username
end)

hl.permission({binary="/usr/bin/xdg-desktop-portal-hyprland", type="screencopy", mode="allow"})
hl.permission({binary="/usr/bin/hyprlock", type="screencopy", mode="allow"})
hl.permission({binary="/usr/bin/quickshell", type="screencopy", mode="allow"})
hl.permission({binary="/usr/bin/grim", type="screencopy", mode="allow"})

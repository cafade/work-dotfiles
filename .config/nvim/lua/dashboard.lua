local g = vim.g

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
    "                                                        ",
    "                                         ▟▙             ",
    "                                         ▝▘             ",
    " ██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖ ",
    " ██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██ ",
    " ██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██ ",
    " ██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██ ",
    " ▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀ ",
    "                                                        ",
}

g.dashboard_custom_section = {
    a = {description = {"洛 New File                  SPC f n"}, command = "DashboardNewFile"},
    b = {description = {"  Find File                 SPC f f"}, command = "Telescope find_files"},
    c = {description = {"  Recents                   SPC f o"}, command = "Telescope oldfiles"},
    d = {description = {"  Find Word                 SPC f w"}, command = "Telescope live_grep"},
    e = {description = {"󰓏  Bookmarks                 SPC f b"}, command = "Telescope marks"},
    f = {description = {"  Load Last Session         SPC f s"}, command = "SessionLoad"}
}

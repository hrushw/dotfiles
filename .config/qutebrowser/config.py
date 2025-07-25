config.load_autoconfig(False)

global_font = "14pt default_family"
pad = 8
showtabbar = True

c.fonts.default_family = [ "RobotoMono Nerd Font", "Symbols Nerd Font" ]

c.downloads.location.directory = "~/dl"
c.downloads.location.suggestion = "both"

# Tabs
# c.url.start_pages = [ "qute://help" ]
c.url.default_page = "qute://help"
# c.url.default_page = "https://search.brave.com"
c.url.searchengines = {
    "DEFAULT" : "https://search.brave.com/search?q={}"
}
c.tabs.show = "always"
c.tabs.position = "left"
c.tabs.favicons.scale = 2.0
c.tabs.width = "15%"
c.auto_save.session = True
c.auto_save.interval = 15000
c.fonts.tabs.selected = global_font
c.fonts.tabs.unselected = global_font
c.tabs.padding = {
    "bottom": pad,
    "top": pad,
    "left": pad,
    "right": pad,
}

c.colors.tabs.odd.fg = "#cccccc"
c.colors.tabs.even.fg = "#cccccc"

c.colors.tabs.odd.bg = "#333333"
c.colors.tabs.even.bg = "#444444"

c.colors.tabs.selected.odd.bg = "#000000"
c.colors.tabs.selected.even.bg = "#000000"

c.colors.tabs.selected.odd.fg = "#ffffff"
c.colors.tabs.selected.even.fg = "#ffffff"

c.tabs.title.format = "{audio}{index}: {current_title}"
c.tabs.title.format_pinned = c.tabs.title.format

c.tabs.last_close = "blank"

# Hints
c.hints.radius = 0
c.hints.mode = "letter"
c.colors.hints.bg = "#bbfff785"
c.hints.padding = {
    "top" : 2,
    "bottom" : 2,
    "left": 6,
    "right": 6,
}
c.fonts.hints = "bold " + global_font

# Statusbar
c.statusbar.show = "always"
c.fonts.statusbar = global_font
c.fonts.completion.category = global_font
c.fonts.completion.entry = global_font
c.colors.completion.category.bg = "#77000000"
c.colors.completion.even.bg = "#77111111"
c.colors.completion.odd.bg = "#77222222"
c.completion.height = "40%"

c.fonts.downloads = global_font

# Dark theme
c.colors.webpage.preferred_color_scheme = "dark"
c.colors.webpage.darkmode.enabled = False

# Ad blocking
c.content.blocking.enabled = True
c.content.blocking.method = "both"

c.content.canvas_reading = False
c.content.webgl = False
c.content.webrtc_ip_handling_policy = "default-public-interface-only"

c.content.autoplay = False
c.content.pdfjs = False
c.fonts.web.size.default = 16

c.confirm_quit = [ "multiple-tabs", "downloads" ]

# config.bind("d", "nop")
# config.bind("tw", "tab-close")

config.bind(",t", "config-cycle -t tabs.show always switching never")
config.bind(",s", "config-cycle -t statusbar.show always in-mode")
config.bind(",m", "spawn mpv {url}")
config.bind(",M", "spawn mpv {url};; tab-close")
config.bind(",p", "spawn --userscript qute-pass")
config.bind(",P", "spawn --userscript qute-pass --password-only")
config.bind(",v", "spawn --userscript readability")
config.bind(",d", "config-cycle colors.webpage.darkmode.enabled")

config.bind(",yr", "click-element css \"#items yt-chip-cloud-chip-renderer:nth-of-type(2)\"")
config.bind("gj", "tab-next")
config.bind("gk", "tab-prev")

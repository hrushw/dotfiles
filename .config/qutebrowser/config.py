config.load_autoconfig(False)

global_font = "14pt default_family"
pad = 8
showtabbar = True

c.fonts.default_family = [ "RobotoMono Nerd Font", "Symbols Nerd Font" ]

# Tabs
c.url.start_pages = [ "qute://help" ]
c.url.default_page = "https://search.brave.com"
c.url.searchengines = {
    "DEFAULT" : "https://search.brave.com/search?q={}"
}
c.tabs.position = "right"
c.tabs.favicons.scale = 2.0
c.tabs.width = "20%"
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

c.tabs.title.format = "{audio}{index}: {current_title}"
c.tabs.title.format_pinned = c.tabs.title.format

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
c.colors.completion.even.bg = "#bb333333"
c.colors.completion.odd.bg = "#bb444444"
c.completion.height = "40%"

c.fonts.downloads = global_font

# Dark theme
c.colors.webpage.preferred_color_scheme = "dark"
c.colors.webpage.darkmode.enabled = False

# Ad blocking
c.content.blocking.enabled = True
c.content.blocking.method = "both"

c.content.autoplay = False
c.content.pdfjs = True

c.confirm_quit = [ "multiple-tabs", "downloads" ]

config.bind(",t", "config-cycle -t tabs.show always never")
config.bind(",s", "config-cycle -t statusbar.show always in-mode")
config.bind(",m", "spawn mpv {url}")
config.bind(",M", "spawn mpv {url};; tab-close")
config.bind(",p", "spawn --userscript qute-pass")
config.bind(",P", "spawn --userscript qute-pass --password-only")


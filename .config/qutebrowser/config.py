config.load_autoconfig(False)

global_font = "12pt default_family"
pad = 8
showtabbar = True

# Tabs
c.url.start_pages = [ "qute://help" ]
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

config.bind(",t", "config-cycle tabs.show always never")
config.bind(",s", "config-cycle statusbar.show always in-mode")

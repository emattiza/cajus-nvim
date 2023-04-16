(module config.plugin.theme
  {autoload {theme nightfox}})

(theme.setup {:options {:transparent true}})

(vim.cmd "colorscheme carbonfox")

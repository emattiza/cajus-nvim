(module config.plugin.bufferline
  {autoload {nvim aniseed.nvim 
             bufferline bufferline}})


(defn- noremap [mode from to]
  (nvim.set_keymap mode from to {:noremap true})
)
(bufferline.setup {})
(noremap :n :<leader>bc ":BufferLinePick<CR>")

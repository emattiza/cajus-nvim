(module config.plugin.fugitive 
  {autoload 
   {fugitive fugitive
    a aniseed.core
    nvim aniseed.nvim}})

(defn nnoremap [from to opts]
  (let [map-opts {:noremap true}
        to (.. ":" to "<CR>")]
    (if (a.get opts :local?)
      (nvim.buf_set_keymap 0 :n from to map-opts)
      (nvim.set_keymap :n from to map-opts))))

(defn lnnoremap [from to]
  (nnoremap (.. "<leader>" from) to))

(lnnoremap :gs "Git")
(lnnoremap :gb "Git blame")
(lnnoremap :gd "Gdiff")
(lnnoremap :gp "Git push")
(lnnoremap :gl "Git pull")
(lnnoremap :gf "Git fetch")
(lnnoremap :gcc "Git commit --verbose")
(lnnoremap :gca "Git commit --all --verbose")
(lnnoremap :gcane "Git commit --amend --no-edit")
(lnnoremap :gdl "diffget LOCAL")
(lnnoremap :gdr "diffget REMOTE")

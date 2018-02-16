(TeX-add-style-hook
 "recog01"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "letter" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "letterpaper" "right=1.25in" "left=1.25in" "top=1in" "bottom=1in") ("inputenc" "utf8") ("fontenc" "T1") ("url" "hyphens") ("graphicx" "pdftex") ("helvet" "scaled=.90") ("babel" "spanish") ("natbib" "longnamesfirst" "sort") ("todonotes" "colorinlistoftodos" "textsize=small")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "geometry"
    "setspace"
    "inputenc"
    "fontenc"
    "amsmath"
    "url"
    "graphicx"
    "tikz"
    "mathptmx"
    "helvet"
    "courier"
    "rotating"
    "caption"
    "dcolumn"
    "arydshln"
    "babel"
    "natbib"
    "todonotes")
   (TeX-add-symbols
    '("am" 1)
    '("emm" 1)
    "mc")
   (LaTeX-add-labels
    "T:ambition"
    "F:venn"
    "T:hyps"
    "T:terrenos"
    "T:regs")
   (LaTeX-add-bibliographies
    "/home/eric/Dropbox/mydocs/magar"))
 :latex)


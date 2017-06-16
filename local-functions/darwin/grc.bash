# Check for brew and grc
if [[ -f `command -v brew` ]]; then
  grc_conf="`brew --prefix grc`/etc/grc.bashrc"
  if [[ -f $grc_conf ]]; then
    source $grc_conf
    alias curl='colourify curl -s'
  fi
fi

# GRC colorizes nifty unix tools all over the place
# if $(grc &>/dev/null) && ! $(brew &>/dev/null)
# then
#  source `brew --prefix`/etc/grc.bashrc
#fi

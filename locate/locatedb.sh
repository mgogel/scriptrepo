  #!/bin/bash
  pushd . > /dev/null
  cd /usr/libexec
  echo "Updating locate database..."
  sudo ./locate.updatedb
  echo "Updating complete!"
  popd > /dev/null

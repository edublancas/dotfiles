#!/usr/bin/env bash

# Install R using homebrew
echo 'Installing R...'
brew tap homebrew/science
brew install r

# For devtools
brew install openssl

# Install colorout to get a colorful R terminal
echo 'Installing colorout...'
git clone https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout


# Install R kernel for Jupyter
echo 'Installing R kernel for Jupyter...'
R -e "install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))"
R -e "devtools::install_github('IRkernel/IRkernel'); IRkernel::installspec()"

echo 'Done!'
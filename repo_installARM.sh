#!/bin/bash
# Download tool repositories and drivers repositories and install each of themm.

git clone https://github.com/sayanarijit/xplr.git $HOME/Documents/tools/xplr &&
git clone https://github.com/sharkdp/bat.git $HOME/Documents/tools/bat &&
git clone https://github.com/sharkdp/fd.git $HOME/Documents/tools/fd &&
git clone https://github.com/sharkdp/vivid.git $HOME/Documents/tools/vivid &&
git clone https://github.com/Peltoche/lsd.git $HOME/Documents/tools/lsd &&
git clone https://github.com/mrjackwills/oxker.git $HOME/Documents/tools/oxker &&
git clone https://github.com/denisidoro/navi.git $HOME/Documents/tools/navi &&
git clone https://github.com/rust-lang/mdBook.git $HOME/Documents/tools/mdBook &&
git clone https://github.com/bootandy/dust.git $HOME/Documents/tools/dust &&
git clone https://github.com/BurntSushi/ripgrep.git $HOME/Documents/tools/ripgrep &&
git clone https://github.com/morrownr/8814au.git $HOME/.src/drivers/8814au &&
git clone https://github.com/morrownr/8821au-20210708.git $HOME/.src/drivers/8821au-20210708 &&

# Individual tool installation, more than 95% are rust repositories

cd $HOME/Documents/tools/xplr/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/xplr/ &&
cd $HOME/Documents/tools/bat/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/bat/ &&
cd $HOME/Documents/tools/fd/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/fd/ &&
cd $HOME/Documents/tools/vivid/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/vivid/ &&
cd $HOME/Documents/tools/lsd/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/lsd/ &&
cd $HOME/Documents/tools/oxker/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/oxker/ &&
cd $HOME/Documents/tools/navi/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/navi/ &&
cd $HOME/Documents/tools/mdBook/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/mdBook/ &&
cd $HOME/Documents/tools/dust/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/dust/ &&
cd $HOME/Documents/tools/ripgrep/ &&
cargo update &&
cargo install --enable-all-features --path=$HOME/Documents/tools/ripgrep/ &&
cd

## ---> cd $HOME/.src/drivers/8814au/ && # have to further tink around with the installation to make it more automated
## ---> cd $HOME/.src/drivers/8821au-20210708 # have to further tink around with the installation to make it more automated
# Embark Theme for Bat
This is the Embark theme port for [Bat](https://github.com/sharkdp/bat). Colors were taken from the [Embark Theme](https://embark-theme.github.io/)

## Installation
You'll need to have a themes folder for Bat in your config. Run this command to create it.
```
mkdir -p "$(bat --config-dir)/themes"
```

Go to that directory, it should be `$HOME/.config/bat/themes`.
```
cd "$(bat --config-dir)/themes"

# Download the theme in the themes folder
git clone https://github.com/kirontoo/bat-embark-theme

# Update the binary cache
bat cache --build
```

Run the following command to make sure the embark theme is available. 
If it outputs with `embark` then it was installed correctly
```
bat --list-themes | grep -i 'embark'
```

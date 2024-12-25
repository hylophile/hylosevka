default:
    @just --list --unsorted

shell:
    #!/usr/bin/env fish
    shell ttfautohint nodejs
    
build:
    npm run build -- ttf-unhinted::Hylosevka --jCmd=12

install:
    rm -rf ~/.local/share/fonts/Hylosevka/
    cp -r dist/Hylosevka/ ~/.local/share/fonts/
    fc-cache

function more -d "opposite of more"
    set -lx MORE '-R'
    type -q source-highlight; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
    command more $argv
end

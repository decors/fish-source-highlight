function more
    if echo | command more -R >/dev/null 2>/dev/null
        set -lx SHELL (which fish)
        set -lx MORE '-R'
        type -q src-hilite-lesspipe; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
        command more $argv
    else
        command more $argv
    end
end

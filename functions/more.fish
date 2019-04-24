if echo | command more -R >/dev/null 2>&1
    function more
        set -lx SHELL (which fish)
        set -lx MORE '-R'
        type -q src-hilite-lesspipe; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
        command more $argv
    end
end

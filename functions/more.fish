function more
    if echo | command more -R >/dev/null ^/dev/null
        set -lx MORE '-R'
        type -q src-hilite-lesspipe; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
        command more $argv
    else
        command more $argv
    end
end

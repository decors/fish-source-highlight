function more
    if command more --version >/dev/null ^/dev/null
        set -lx MORE '-R'
        type -fq source-highlight; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
        command more $argv
    else
        command more $argv
    end
end

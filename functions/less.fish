function less
    set -lx LESS '-R'
    type -q src-hilite-lesspipe; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
    command less $argv
end

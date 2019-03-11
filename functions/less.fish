function less
    set -lx SHELL (which fish)
    set -lx LESS '-R'
    type -q src-hilite-lesspipe; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
    command less $argv
end

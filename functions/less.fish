function less
    set -lx LESS '-R'
    type -q source-highlight; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
    command less $argv
end

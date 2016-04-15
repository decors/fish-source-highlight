function less -d "opposite of more"
    set -lx LESS '-R'
    type -q source-highlight; and set -lx LESSOPEN '| src-hilite-lesspipe %s'
    command less $argv
end

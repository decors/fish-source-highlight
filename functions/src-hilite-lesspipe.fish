function src-hilite-lesspipe
    for source in $argv
        switch "$source"
            case "*ChangeLog" "*changelog"
                source-highlight --failsafe -f esc --lang-def=changelog.lang -i "$source"
            case "Makefile" "*makefile"
                source-highlight --failsafe -f esc --lang-def=makefile.lang -i "$source"
            case "*.tar" "*.tgz" "*.gz" "*.bz2" "*.xz" "*.zip"
                if type -qf lesspipe.sh
                    command lesspipe.sh "$source"
                else if type -qf lesspipe
                    command lesspipe "$source"
                end
            case "*"
                source-highlight --failsafe --infer-lang -f esc -i "$source"
        end
    end
end

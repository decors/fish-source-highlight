function src-hilite-lesspipe
    test -f $source_highlight_style_file; and set stylefile $source_highlight_style_file; or set stylefile esc.style
    for source in $argv
        switch "$source"
            case "*ChangeLog" "*changelog"
                command source-highlight --failsafe -f esc --lang-def=changelog.lang --style-file=$stylefile -i "$source"
            case "Makefile" "*makefile"
                command source-highlight --failsafe -f esc --lang-def=makefile.lang --style-file=$stylefile -i "$source"
            case "*.tar" "*.tgz" "*.gz" "*.bz2" "*.xz" "*.zip"
                if type -qf lesspipe.sh
                    command lesspipe.sh "$source"
                else if type -qf lesspipe
                    command lesspipe "$source"
                end
            case "*"
                command source-highlight --failsafe --infer-lang -f esc --style-file=$stylefile -i "$source"
        end
    end
end

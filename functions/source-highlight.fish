function source-highlight
    test -f $source_highlight_style_file;
        and set stylefile $source_highlight_style_file;
        or set stylefile esc.style

    command source-highlight --style-file=$stylefile $argv
end

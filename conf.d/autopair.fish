set --global autopair_left "(" "[" "{" '"' "'"
set --global autopair_right ")" "]" "}" '"' "'"
set --global autopair_pairs "()" "[]" "{}" '""' "''"

test $fish_key_bindings = fish_default_key_bindings \
    && set --local mode default \
    || set --local mode insert

bind --mode $mode \177 _autopair_backspace # macOS ⌫
bind --mode $mode \b _autopair_backspace
bind --mode $mode \t _autopair_tab

printf "%s\n" $autopair_pairs | while read --local left right --delimiter ""
    if test $left = $right
        bind --mode $mode $left "_autopair_insert_same \\$left"
    else
        bind --mode $mode $left "_autopair_insert_left \\$left \\$right"
        bind --mode $mode $right "_autopair_insert_right \\$right"
    end
end

function _autopair_uninstall --on-event autopair_uninstall
    bind --all \
        | string match --regex -- .\*_autopair \
        | string replace -- _autopair --erase \
        | source
    set --erase autopair_pairs
end
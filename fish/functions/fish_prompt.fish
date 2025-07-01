# Override the fish prompt with the date on one line, user@host on another, and git branch
function fish_prompt

    # length in characters of current git branch
    set --local branchlength (count (string split '' (fish_git_prompt %s)))

    echo # top newline
    # date | user@host 2nd line
    echo (set_color brmagenta)(date "+%d %b,")(set_color magenta) (date "+%H:%M:%S")(set_color brblue)" | "(set_color brgreen)(whoami)(set_color brblue)@(set_color normal)(hostname)

    # dynamically switch prompt bottom lines 
    # if there is a git branch detected 
    if test $branchlength -gt 0
        # if there is a branch:
        echo (set_color --underline magenta)(prompt_pwd)(set_color normal)
        echo (set_color brmagenta)"["(set_color yellow)(fish_git_prompt %s)(set_color brmagenta)"]"(set_color --bold brgreen)" ➜  "
    else
        # if there is not a branch:
        echo (set_color --underline green)(prompt_pwd)(set_color normal)
        echo (set_color --bold blue)"➜  "(set_color normal)
    end
end

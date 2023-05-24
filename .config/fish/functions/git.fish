function git --wraps git --description "Run git, but without any arguments, invoke fugitive"
    if count $argv > /dev/null
        command git $argv
    else
        command git rev-parse --is-inside-work-tree > /dev/null
        and nvim +Git +only
    end
end

function xtard
    set BASE (string replace --regex "/\$" "" $argv)
    tar --create --xz --file $BASE.tar.xz $argv
end

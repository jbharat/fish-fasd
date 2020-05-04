function zz --description 'Fuzzy jump to directory'
    set -l tgt_dir (fasd -dlR | eval "fzf $FZF_DEFAULT_OPTS")
    if [ (echo $tgt_dir) ]
        cd $tgt_dir
    end
end


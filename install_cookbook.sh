cd cookbooks
for cb in $@; do
    knife cookbook site download $cb
    tar zxf $cb*.tar.gz && rm -f $cp*.tar.gz
done

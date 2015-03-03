function ram()
{
    : '''
    Show how much RAM application uses.
    $ ram safari
    => safari uses 154.69 MBs of RAM.
    '''
    local sum
    local items
    local app="$1"
    if [ -z "$app" ]; then
        echo "First argument - pattern to grep from processes"
    else
        sum=0
        for i in `ps aux | grep -i "$app" | grep -v "grep" | awk '{print $6}'`; do
            sum=$(($i + $sum))
        done
        sum=$(echo "scale=2; $sum / 1024.0" | bc)
        if [[ $sum != "0" ]]; then
            echo "${fg[blue]}${app}${reset_color} uses ${fg[green]}${sum}${reset_color} MBs of RAM."
        else
            echo "There are no processes with pattern '${fg[blue]}${app}${reset_color}' are running."
        fi
    fi
}

function py2to3()
{
    : ''' Change default python to use python '''
    ln -s /usr/bin/python3 ~/bin/python
    ln -s /usr/bin/python3-config ~/bin/python-config
}

function py3to2()
{
    : ''' Change default python to use python2 '''
    rm ~/bin/python
    rm ~/bin/python-config
}

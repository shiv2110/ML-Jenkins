# !/bin/bash

var=$(python3 model.py)
var2=$(python3 model2.py)
var3=$(python3 model3.py)
var4=$(python3 model4.py)
var5=$(python3 model5.py)
var6=$(python3 model6.py)
var7=$(python3 model7.py)
var8=$(python3 model8.py)

if (( $(echo "$var < $var2" |bc -l) ))
then
        echo `cp model2.py model.py`
        var=$var2
fi

if (( $(echo "$var < $var3" |bc -l) ))
then
        echo `cp model3.py model.py`
        var=$var3
fi

if (( $(echo "$var < $var4" |bc -l) ))
then
        echo `cp model4.py model.py`
        var=$var4
fi

if (( $(echo "$var < $var5" |bc -l) ))
then
        echo `cp model5.py model.py`
        var=$var5
fi

if (( $(echo "$var < $var6" |bc -l) ))
then
        echo `cp model6.py model.py`
        var=$var6
fi

if (( $(echo "$var < $var7" |bc -l) ))
then
        echo `cp model7.py model.py`
        var=$var7
fi

if (( $(echo "$var < $var8" |bc -l) ))
then
        echo `cp model8.py model.py`
        var=$var8
fi




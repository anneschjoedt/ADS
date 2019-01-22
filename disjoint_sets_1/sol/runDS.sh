set -e
if [[ DS1.java -ot DS1.class ]]; then echo already compiled;
else
    javac DS1.java
fi

function mytest { # class base
    java $1 < $2-in.txt 2>&- | diff -s - $2-out.txt
}

#java DS1 < 2-in.txt | diff - 2-out.txt 
mytest DS1 1
mytest DS1 2

for i in `seq 7`
do
    n=$(( 2** $i  * 100 ))
    bash path.sh $n > in.txt
    /usr/bin/time -o ./tt -f %e java DS1 < in.txt &> /dev/null
    t=`cat ./tt`
    echo $n $t $(echo "scale=4; 1000*$t/$n" |bc -l)
    rm in.txt ./tt
done


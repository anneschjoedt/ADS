# called with n as $1

echo $1 $(( 3* ($1 -1) ))
for i in $( seq 0 $(( $1 -1 )) )
do
    echo q 0 $(( $i +1 ))
    echo u $i $(( $i +1 ))    
    echo q 0 $(( $i +1 ))
done

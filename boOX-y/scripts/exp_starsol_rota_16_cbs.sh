ROBOT_LIST=`cat robots_16`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
    echo 'Solving star instance '$SIZE' with '$ROBOTS' agents ...'
    ./rota_solver_boOX --algorithm=cbs --timeout=64 '--input-file=star_'$SIZE'_a'$ROBOTS'.mpf' '--output-file=star_'$SIZE'_a'$ROBOTS'.out' > 'rota-cbs_star_'$SIZE'_a'$ROBOTS'.txt'
done

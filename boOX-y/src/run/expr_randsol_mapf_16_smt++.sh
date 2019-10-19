ROBOT_LIST=`cat robots_16`
SEED_LIST=`cat seeds_10`
SIZE=16
TIMEOUT=`cat timeout`

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do            
    echo 'Solving random instance '$SIZE' with '$ROBOTS' agents ...'
    ../main/mapf_solver_boOX --algorithm=smtcbs++ '--timeout='$TIMEOUT '--input-file=rand_'$SIZE'_a'$ROBOTS'_'$SEED'.mpf' '--output-file=mapf-smt++_rand_'$SIZE'_a'$ROBOTS'_'$SEED'.out' > 'mapf-smt++_rand_'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
  done
done
if `g++ -std=c++11 -O2 -Wall ${1}`; then
  echo "SUCCESS COMPILE"
  for i in `seq 1 5`
  do
    cd $(dirname $0)
    P=`pwd`
    DIR=`basename ${P}`
    str="2017-yo-t${DIR}-in${i}.txt"
    ./a.out < $str > "out-${DIR}-${i}.txt"
    echo "SUCCESS out-${DIR}-${i}.txt"
  done
else
  echo "Failed"
fi 

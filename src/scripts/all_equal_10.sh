in=$1 # input files dir
out=$2 # time files dir

#./scripts/exec.sh fixpreprocess.exe $in > $out/fixpreprocess.time
./scripts/exec.sh mergeseg.exe $in > $out/mergeseg.time
./scripts/exec.sh radixseg.exe $in > $out/radixseg.time
#./scripts/exec.sh fixcub.exe $in > $out/fixcub.time
./scripts/exec.sh fixthrust.exe $in > $out/fixthrust.time
#./scripts/exec.sh fixsort/bitonic/bitonicsort.exe $in > $out/fixbitonic.time
#./scripts/exec.sh fixsort/mergesort/mergesort.exe $in > $out/fixmerge.time
#./scripts/exec.sh fixsort/oddevensort/oddevensort.exe $in > $out/fixoddeven.time
#./scripts/exec.sh fixsort/quicksort/quicksort.exe $in > $out/fixquick.time



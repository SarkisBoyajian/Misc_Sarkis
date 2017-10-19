N=1
for n in $(seq 1 10)
do
echo "making Boyajian file number ${n}"
mkdir Boyajian${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
cd Boyajian${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n ))
done

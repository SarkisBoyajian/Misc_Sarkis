# replace Name with your name 
N=1
#initializing the index to be 1
for n in $(seq 1 5)
#making for loop from 1 to 5
do
echo "making Boyajian file number ${n}"
#message displayed while running the loop in the terminal 
mkdir Boyajian${n}
#making Boyajian files with the index 
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
#sending the variables inputOrig.txt
cd Boyajian${n}
#entering the new folder
cp ../input.txt ./
#copying the input file from the previous folder to the new one
cd ../
#go back to previous directory
N=$(( $N + $n ))
#adding the index
done

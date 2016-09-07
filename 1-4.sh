##Homework 1-4. Program takes in a sequence of integers as parameters and displays them in reverse order.##

function main(){
	list=("$@")	#copies the arguments into an array
	size=${#list[@]} #retrives size of array

	#sorts the elements is ascending order
	for(( i = 0; i < size; i++))
	do
		for((j = 0; j < size; j++))
		do
			if((list[i] > list[j] && i < j)); then
					temp=${list[$i]}
					list[i]=${list[$j]}
					list[j]=$temp
			fi
		done
	done

	#prints array
	for i in ${list[@]}
	do
		echo $i
	done
}

#$@ captures all parameters 
main  $@ 		

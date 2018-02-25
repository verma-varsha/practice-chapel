//Code for inputting an array

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

//Loops for selection sort
var min_num_index: int;
var temp: int;
for i in 1..(n-1){
    min_num_index = i;
    for j in (i+1)..n{
        if(Arr(j)<Arr(min_num_index)){
            min_num_index = j;
        }
    }
    temp = Arr(i);
    Arr(i) = Arr(min_num_index);
    Arr(min_num_index) = temp;
}

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
//Code for inputting an array

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

//Loops for Bubble sort
var temp: int;
for i in 1..(n-1){
    for j in 1..(n-i){
        if(Arr(j)>Arr(j+1)){
            temp=Arr(j);
            Arr(j)=Arr(j+1);
            Arr(j+1)=temp;
        }
    }
}

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
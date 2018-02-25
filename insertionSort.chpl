//Code for getting an array through input

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

//Loops for insertion sort
var temp: int;
for i in 2..n{
    var j:int = i-1;
    temp=Arr(i);
    while(j>0 && Arr(j)>temp){
        Arr(j+1)=Arr(j);
        j=j-1;
    }
    Arr(j+1)= temp;
}

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
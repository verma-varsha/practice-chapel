//Code for inputting an array

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

//Bubble sort routine
proc bubbleSort(n: int){
    if(n==1){
        return;
    }
    for i in 1..(n-1){
        if(Arr(i)>Arr(i+1)){
            var temp:int = Arr(i);
            Arr(i) = Arr(i+1);
            Arr(i+1) = temp;
        }
    }
    bubbleSort(n-1);
}

//main
bubbleSort(n);

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();

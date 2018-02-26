//Code for getting an array through input

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

//recursive insertion sort procedure
proc insertionSort(n:int){
    if(n<=1){
        return;
    }
    insertionSort(n-1);
    var temp:int = Arr(n);
    var j:int = n-1;
    while(j>0 && Arr(j)>temp){
        Arr(j+1)=Arr(j);
        j=j-1;
    }
    Arr(j+1)=temp;
}

insertionSort(n);
//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
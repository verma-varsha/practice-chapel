//Code for getting an array through input

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

proc partition(l:int, r:int){
    var pivot:int =Arr(r);
    var i:int =l;
    for j in l..(r-1){
        if(Arr(j)<pivot){
            //swap Arr(j) and Arr(i)
            var temp: int = Arr(j);
            Arr(j)=Arr(i);
            Arr(i)=temp;
            i=i+1;
        }
    }
    var temp: int = Arr(r);
    Arr(r) = Arr(i);
    Arr(i) = temp;
    return i;
}

proc quickSort(l:int, r:int){
    if(l<r){
        var p:int = partition(l, r);
        quickSort(l, p-1);
        quickSort(p+1, r);
    }
}

quickSort(1, n);

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
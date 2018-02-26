//Code for getting an array through input

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

proc merge(l:int, mid:int, r:int){
    var num_left:int = mid-l+1;
    var num_right:int = r-mid;
    var arr_left:[1..num_left] int;
    var arr_right:[1..num_right] int;
    var j:int;
    j=1;
    for i in l..mid{
        arr_left(j)=Arr(i);
        j=j+1;
    }
    j=1;
    for i in (mid+1)..r{
        arr_right(j)=Arr(i);
        j=j+1;
    } 
    var i_l:int=1;
    var i_r:int=1;
    j=l;
    while(i_l<=num_left && i_r<=num_right){
        if(arr_left(i_l)<=arr_right(i_r)){
            Arr(j)=arr_left(i_l);
            j=j+1;
            i_l=i_l+1;
        }
        else{
            Arr(j)=arr_right(i_r);
            j=j+1;
            i_r=i_r+1;
        }
    }
    while(i_l<=num_left){
        Arr(j)=arr_left(i_l);
        i_l=i_l+1;
        j=j+1;  
    }
    while(i_r<=num_right){
        Arr(j)=arr_right(i_r);
        j=j+1;
        i_r=i_r+1;
    }
}

proc mergeSort(l:int, r:int){
    if(l<r){
        var mid:int = (l+r)>>1;
        mergeSort(l, mid);
        mergeSort(mid+1, r);
        merge(l, mid, r);
    }
}

mergeSort(1, n);

//Printing the sorted array
writeln("The sorted array:");
for i in 1..n{
    write(Arr(i), " ");
}
writeln();
// A chapel implementation of Binary insertion sort which uses a modified binary search

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    arr(i) = stdin.read(int);
}

binary_insertion_sort(arr,1,n);
writeln("Sorted array is:");
printarr(arr);

proc modified_binary_search(arr:[?D] int ,low:int ,high:int ,key:int ):int
{
    var mid:int;
    var start_idx=low;
    var end_idx=high;
    while(end_idx-start_idx>0)
    {
        mid=(end_idx+start_idx)/2;
        if(arr[mid]>=key) then end_idx=mid;
        else{
            start_idx=mid+1;
        }
    }
    return end_idx;
}

proc binary_insertion_sort(arr:[?D] int,start_idx:int,end_idx:int)
{
    var i,idx,j,temp1,temp2:int;
    if(end_idx-start_idx>1)
    {
        for i in start_idx+1..end_idx
        {
            idx=modified_binary_search(arr,start_idx,i-1,arr[i]);
            if(arr[idx]<=arr[i] && i-idx<=1) then continue;
            temp1=arr[i];
            for j in idx..i
            {
                temp2=arr[j];
                arr[j]=temp1;
                temp1=temp2;
            }
        }
    }
}

proc printarr(arr:[?D] int)
{
    for i in D
    {
        writeln(arr[i]);
    }
}



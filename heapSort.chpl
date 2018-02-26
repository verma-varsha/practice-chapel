var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    arr(i) = stdin.read(int);
}

heapSort(arr,n);
writeln("Sorted array is:");
printarr(arr);


proc printarr(arr:[?D] int)
{
    for i in D
    {
        writeln(arr[i]);
    }
}

proc heapSort(arr:[?D] int,size:int)
{
	var i:int;
	i=size/2;
	while(i>0)
	{
		heapify(arr,size,i);
		i=i-1;
	}
	i=size;
	while(i>0)
	{
		var temp=arr[1];
		arr[1]=arr[i];
		arr[i]=temp;

		i=i-1;
		heapify(arr,i,1);

	}
}

proc heapify(arr:[?D] int,size:int,i:int)
{
	var largest,l,r:int;
	largest=i;
	l=2*i;
	r=2*i+1;
	if(l<=size && arr[l]>arr[largest]) then largest=l;
	if(r<=size && arr[r]>arr[largest]) then largest=r;
	if(largest!=i)
	{
		var temp=arr[i];
		arr[i]=arr[largest];
		arr[largest]=temp;

		heapify(arr,size,largest);
	}
}
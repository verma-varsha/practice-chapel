//Code for getting an array through input

var n: int;
writeln("Enter the number of array elements:");
n=stdin.read(int);
var Arr: [1..n] int;
writeln("Enter the array elements:");
for i in 1..n{
    Arr(i) = stdin.read(int);
}

var outputArr:[1..n] int;

proc getMax(){
    var max_num:int =Arr(1);
    for i in 2..n{
        if(Arr(i)>max_num){
            max_num=Arr(i);
        }
    }
    return max_num;
}

proc printArray(){
    //Printing the sorted array
    for i in 1..n{
        write(Arr(i), " ");
    }
    writeln();
}

proc countSort(exp:int){
    var aux:[0..9] int;
    for i in 1..n{
        aux((Arr(i)/exp)%10)=aux((Arr(i)/exp)%10)+1;
    }
    for i in 1..9{
        aux(i)=aux(i-1)+aux(i);
    }
    var j:int = n;
    while(j>0){
        outputArr(aux((Arr(j)/exp)%10))=Arr(j);
        aux((Arr(j)/exp)%10)=aux((Arr(j)/exp)%10)-1;
        j=j-1;
    }
    for i in 1..n{
        Arr(i)=outputArr(i);
    }
    writeln("exp=", exp);
    printArray();
}

var exp:int =1;
var m:int =getMax();
while(m/exp>0){
    countSort(exp);
    exp=exp*10;
}

writeln("Final Output Array:");
printArray();



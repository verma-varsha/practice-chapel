/*Range = 0-60*/

//var Arr:[1..15] int = (43, 19, 48, 51, 55, 26, 21, 32, 20, 31, 57, 44, 55, 35, 27);

var range:int;
var n:int;
writeln("Enter the range:");
range = stdin.read(int);
writeln("Enter number of array elements:");
n = stdin.read(int);
var Arr:[1..n] int;
writeln("Enter array elements:");

for i in 1..n{
    Arr(i)=stdin.read(int);
}

var aux_arr:[0..range] int;

for i in 1..n{
    aux_arr(Arr(i))=aux_arr(Arr(i))+1;
}

writeln("The sorted array is as follows:");

for i in 0..range{
    while(aux_arr(i)!=0){
        write(i, " ");
        aux_arr(i)=aux_arr(i)-1;
    }
}
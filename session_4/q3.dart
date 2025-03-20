void main (){
    List<int> number =[2,4,3,5,7,8];
    for ( int number in number){
        if (number%2==0){
            print ("Even:$number");
        }else{
            print("Odd:$number");
        }
    }
}
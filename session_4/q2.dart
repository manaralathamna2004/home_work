double calculateBonus (int salary , int yearsWorked){
    if(yearsWorked>=5){
        return salary*0.10;
    }else{
           return salary*0.05;
    }
}
void main (){
    int salary = 1000;
    int yearsWorked = 5;
    double bonus = calculateBonus(salary,yearsWorked);
    print(" The bouns a mount is :$bonus");
}
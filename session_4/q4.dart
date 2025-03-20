import 'dart:io';
void main (){
    Map<String,int>fruitPrices={
        "Apple" : 8,
        "Banana" :5,
      "Orange" :4
    };
    int getPrice(String fruitName ){

        return fruitPrices.containsKey(fruitName) ? fruitPrices [fruitName]!:-1;
    }
    stdout.write("Enter fruitName:");
        String fruitName = stdin .readLineSync()?? "";
        int price = getPrice(fruitName);
        if (price==-1){
            print ("Fruit not found .");
        }else {
            print(" The price of $fruitName: $price");
        }


}
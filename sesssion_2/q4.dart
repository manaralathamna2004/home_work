void main(){
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 25 ,
   'city': 'New York'
  };
  print (person['age']);
 person['city']='Los Angeles';
 print (person);
}
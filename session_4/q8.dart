String getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return 'Weekend';
    case 'Monday':
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
    case 'Friday':
      return 'Weekday';
    default:
      return 'Invalid day';
  }
}

void main() {
 
  print(getDayType('Saturday')); 
  print(getDayType('Wednesday')); 
  print(getDayType('Funday'));    
}
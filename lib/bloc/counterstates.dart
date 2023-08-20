class counterstate{
  int counter ;
  counterstate({required this.counter});
}

class initialstate extends counterstate{
  initialstate():super(counter: 0);
  
}
import 'dart:io';

void main() {
  //List initialArray = [1, 2, 3, 4];
  //List initialArray= [1, 1, 1, 1, 1];
  //List initialArray=[1, 3, 5, 7, 9];
  //List cumulativeArray = [];
  int i=0;
  ///get list elements from the user
  print("Enter elements for the list");
  int listElements=int.parse(stdin.readLineSync()!);

  ///created two list variables
  ///initialArray for input and cumulativeArray for output
  List<int> initialArray=[];
  List<int> cumulativeArray=[];

  ///add the list elements
  while(i<listElements)
  {
    int elements=int.parse(stdin.readLineSync()!);
    initialArray.add(elements);
    i++;
  }
  print(initialArray);

  for (int i = 0; i < initialArray.length; i++) { //i=0,i=1,i=2,i=3

    ///if index of initial array is 0 then add element of 0th index in cumulativeArray
    if (i == 0) { //[1]
      cumulativeArray.add(initialArray[i]);
      print("if Cumulative Array : $cumulativeArray");
    }

    ///else additiion of list elements
    else {
      int k = cumulativeArray[i-1] + initialArray[i]; // num k = cumulativeArray[0] 1 + initialArray[1] 2 ,// cumulativeArray[1] 3  + initialArray[2] 3
      cumulativeArray.add(k); //3,6
      print("else Cumulative Array : $cumulativeArray"); // 1,3,6
    }
  }
  print("Final Cumulative Array : $cumulativeArray");
}


//remove warning
//enter values from user
//add documentation comments
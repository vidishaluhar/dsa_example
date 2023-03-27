import 'dart:io';

void main()
{
  print("Enter the test cases");
  int testcases = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < testcases; i++) {
          print("enter no of elements for the test cases : ${i+1}");
          int listElements = int.parse(stdin.readLineSync()!);

          List<int> initialArray = [];
          List<int> cumulativeArray = [];
          List<int> positiveCumulativeArray = [];

          print("enter elements ");
          int j=0;
          while (j < listElements) {
            int elements = int.parse(stdin.readLineSync()!);
            initialArray.add(elements);
            j++;
          }

          print(initialArray);

          for (int i = 0; i < initialArray.length; i++) {
            if (i == 0) {
              cumulativeArray.add(initialArray[0]);
              print("if cumulativeArray : $cumulativeArray");
            }
            else {
              int k = cumulativeArray[i - 1] + initialArray[i];
              cumulativeArray.add(k);
              print("else CumulativeArray : $cumulativeArray");
            }
            if (cumulativeArray[i] > 0) {
              positiveCumulativeArray.add(cumulativeArray[i]);
            }
          }
          print("Final CumulativeArray : $cumulativeArray");
          print("Positive Cumulative Array : $positiveCumulativeArray");
  }
}
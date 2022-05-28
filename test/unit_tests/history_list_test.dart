

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_test/src/utils/form_utils.dart';

void main() {






  List<List<String>> ll =  <List<String>>[];
  int index=-1;



  void changeList(list){
    index++;
    if(index>=ll.length){
      ll.add(list);
    }else{
      ll[index]= list;

      ll.length =  index+1;

    }
  }

  List getListOfListPosition(int i){
    return ll[index];
  }

  redo(){
    if(index+1<ll.length) {
      index++;
    }
  }

  undo(){
    if(index>0) {
      index--;
    }
  }







  group('Form validators', () {
    test('Email', () {
      changeList(["A","B","D"]);
      expect(getListOfListPosition(0), ["A","B","D"]);
       changeList(["A","B","E"]);
       expect(getListOfListPosition(1), ["A","B","E"]);

      changeList(["A","A"]);
      expect(getListOfListPosition(1), ["A","A"]);

      undo();
      expect(getListOfListPosition(1), ["A","B","E"]);

      undo();
      expect(getListOfListPosition(1), ["A","B","D"]);
      expect(ll.length,3);



      undo();
      undo();
      changeList(["A","B","E1"]);
      expect(getListOfListPosition(1), ["A","B","E1"]);
      expect(ll.length,2);

      redo();
      expect(getListOfListPosition(1), ["A","B","E1"]);








      // expect(getListofListPosition(1), ["A","B","C"]);


    });






  });
}

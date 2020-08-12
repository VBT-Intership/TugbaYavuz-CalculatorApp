import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculatorApp());
}
class MyCalculatorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      title: 'My Calculator',
      home: MyCalculator()
    );
  }

}


class MyCalculator extends  StatefulWidget{
@override
  State<StatefulWidget> createState() => Calculator();

}


class Calculator extends  State<MyCalculator>{

  final controller_number1 = TextEditingController();
  final controller_number2 = TextEditingController();
  final key = GlobalKey<FormState>();

  String textShow = "";

  void sum(){
    if(key.currentState.validate()){
      int number1 = int.parse(controller_number1.text);

       int number2 = int.parse(controller_number2.text);

       int result = number1+number2;

       setState(() {
         textShow = "$number1 + $number2 = $result";
       });
    }
  }


  void minus(){
    if(key.currentState.validate()){
      int number1 = int.parse(controller_number1.text);

       int number2 = int.parse(controller_number2.text);

       int result = number1-number2;

       setState(() {
         textShow = "$number1 - $number2 = $result";
       });
    }
  }

  

  void multi(){
    if(key.currentState.validate()){
      int number1 = int.parse(controller_number1.text);

       int number2 = int.parse(controller_number2.text);

       int result = number1*number2;

       setState(() {
         textShow = "$number1 * $number2 = $result";
       });
    }
  }

  
  void div(){
    if(key.currentState.validate()){
      int number1 = int.parse(controller_number1.text);

       int number2 = int.parse(controller_number2.text);

       double result = number1/number2;

       setState(() {
         textShow = "$number1 / $number2 = $result";
       });
    }
  }



  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(body: Form(key: key,child:
    Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        controller: controller_number1,
        validator: (value){
          if(value.isEmpty) return "please enter the 1st number";
        },
        decoration: InputDecoration(hintText: "Enter the 2nd number"),
        keyboardType: TextInputType.number),

        TextFormField(
        controller: controller_number2,
        validator: (value){
          if(value.isEmpty) return "please enter the number";
        },
        decoration: InputDecoration(hintText: "Enter the number"),
        keyboardType: TextInputType.number),

        Text(textShow,style: TextStyle(fontSize: 20.0),),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
          RaisedButton(onPressed: sum, child: Text('+'),),
          RaisedButton(onPressed: minus, child: Text('-'),),
          RaisedButton(onPressed: multi, child: Text('*'),),
          RaisedButton(onPressed: div, child: Text('/'),)
        ],)
      
    ],
    )
     )
     );
  }

}
  

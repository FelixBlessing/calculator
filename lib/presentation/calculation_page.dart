import 'package:flutter/material.dart';

class CalculationPage extends StatelessWidget {
  const CalculationPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[900],
/*       appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ), */
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
            )),
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[900],),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 9, right: 9),
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.pink[100],child: Text("AC", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("()", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("%", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("%", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("7", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("8", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("9", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("x", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("4", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("5", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("6", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("-", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("1", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("2", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("3", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green[100],child: Text("+", style: TextStyle(fontSize: 30, color: Colors.black),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text("0", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Text(",", style: TextStyle(fontSize: 30,),),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey[850],child: Icon(Icons.backspace_outlined),),
                      FloatingActionButton(onPressed: (){}, backgroundColor: Colors.blue[50],child: Text("=", style: TextStyle(fontSize: 30, color: Colors.black),),),
                    ],
                    ),
                )
              ))
        ],
        
      ),
        
    );
  }
}
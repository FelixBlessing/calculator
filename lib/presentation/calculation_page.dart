import 'package:calculator/application/calculator/bloc/calculation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculationPage extends StatelessWidget {
  const CalculationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: BlocBuilder<CalculatorBloc, CalculationState>(
                      bloc: BlocProvider.of<CalculatorBloc>(context),
                      builder: (context, state) {
                        if(state is CalculationInputState){
                        return Text(
                          state.number,
                          style: TextStyle(
                              fontSize: 80, fontWeight: FontWeight.bold),
                        );}
                        return const Placeholder();
                      },
                    )),
              )),
          Flexible(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 9, right: 9),
                    child: GridView.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(ClearPressedEvent());
                          },
                          backgroundColor: Colors.pink[100],
                          child: Text(
                            "AC",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {context.read<CalculatorBloc>().add(ClearPressedEvent());},
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "()",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "%",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(OperatorPressedEvent(operator: "/"));
                          },
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "7"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "8"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "9"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "9",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(OperatorPressedEvent(operator: "x"));
                          },
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "x",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "4"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "5"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "6"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(OperatorPressedEvent(operator: "-"));
                          },
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "1"));;
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "2"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "3"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(OperatorPressedEvent(operator: "+"));
                          },
                          backgroundColor: Colors.green[100],
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(NumberPressedEvent(number: "0"));
                          },
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            "0",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.grey[850],
                          child: Text(
                            ",",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.grey[850],
                          child: Icon(Icons.backspace_outlined),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context.read<CalculatorBloc>().add(ResultPressedEvent());
                          },
                          backgroundColor: Colors.blue[50],
                          child: Text(
                            "=",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}

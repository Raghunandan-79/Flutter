import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num? z;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  late final AppLifecycleListener _listener;

  @override
  void initState() {
    super.initState();
    _listener = AppLifecycleListener(
      onShow: _onShow,
      onHide: _onHide,
      onResume: _onResume,
      onDetach: _onDetach,
      onInactive: _onInactive,
      onPause: _onPause,
      onRestart: _onRestart,
      onStateChange: _onStateChanged,
      // onExitRequested: _onExitRequested,
    );
  }

  void _onShow() => print("onShow called");

  void _onHide() => print("onHide called");

  void _onResume() => print("onResume called");

  void _onDetach() => print("onDetach called");

  void _onInactive() => print("onInactive called");

  void _onPause() => print("onPause called");

  void _onRestart() => print("onRestart called");

  void _onStateChanged(AppLifecycleState state) {
    print("onStateChanged called with state: $state");
  }

  @override
  void dispose() {
    displayOneController.dispose();
    displayTwoController.dispose();
    _listener.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          // Calculator display
          CalculatorDisplay(
            key: Key("displayOne"),
            hint: "Enter First Number",
            controller: displayOneController,
          ),

          SizedBox(height: 30),

          CalculatorDisplay(
            key: Key("displayTwo"),
            hint: "Enter Second Number",
            controller: displayTwoController,
          ),

          const SizedBox(height: 30),

          Text(
            key: Key("Result"),
            z?.toString() ?? "",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    final num1 = num.tryParse(displayOneController.text) ?? 0;
                    final num2 = num.tryParse(displayTwoController.text) ?? 0;
                    z = num1 + num2;
                  });
                },
                child: Icon(Icons.add),
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    final num1 = num.tryParse(displayOneController.text) ?? 0;
                    final num2 = num.tryParse(displayTwoController.text) ?? 0;
                    z = num1 - num2;
                  });
                },
                child: Icon(CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    final num1 = num.tryParse(displayOneController.text) ?? 0;
                    final num2 = num.tryParse(displayTwoController.text) ?? 0;
                    z = num1 * num2;
                  });
                },
                child: Icon(CupertinoIcons.multiply),
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    final num1 = num.tryParse(displayOneController.text) ?? 0;
                    final num2 = num.tryParse(displayTwoController.text) ?? 0;
                    z = num1 / num2;
                  });
                },
                child: Icon(CupertinoIcons.divide),
              ),
            ],
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                x = 0;
                y = 0;
                z = null;
                displayOneController.clear();
                displayTwoController.clear();
              });
            },
            child: Text("Clear"),
          ),

          // Expand
          // Calculator buttons
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3.0),

          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3.0),

          borderRadius: BorderRadius.circular(10),
        ),

        hintText: hint,
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}

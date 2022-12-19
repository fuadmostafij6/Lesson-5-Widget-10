import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  bool showButton = false;
  final _formKey = GlobalKey<FormState>();
  printInputData() {
    if (_formKey.currentState!.validate()) {
      print(_controller.text);
      print(_controller1.text);
      setState(() {
        showButton = !showButton;
      });
    }
  }

  @override
  void dispose() {
    _controller.clear();
    _controller1.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Home Page"),
          centerTitle: true,
          leading: const Icon(
            Icons.account_box,
            size: 30,
            color: Colors.deepOrange,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextFormField(
                  controller: _controller,

                  onChanged: (value) {
                    print(value);
                  },

                  validator: (value) {
                    if (value!.length < 5) {
                      return "Please provide 6 digit";
                    }

                    return null;
                  },

                  //  obscuringCharacter: "*",
                  //   keyboardType: TextInputType,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextFormField(
                  controller: _controller1,
                  validator: (value) {
                    if (value!.length < 5) {
                      return "Please provide 6 digit";
                    }
                    return null;
                  },

                  onChanged: (value) {
                    print(value);
                  },

                  //  obscuringCharacter: "*",
                  //   keyboardType: TextInputType,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 5,
                      ),
                      backgroundColor: Colors.deepOrange),
                  onPressed: () {
                    printInputData();
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )),

              showButton ==true?
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 5,
                      ),
                      backgroundColor: Colors.deepOrange),
                  onPressed: () {
                    printInputData();
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                  ))
                  :
              Container()
            ],
          ),
        )

        // Text("Login"),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //
        //     Container(
        //       height: 100,
        //         width: 100,
        //         color: Colors.black,
        //         child: Center(
        //           child: const Text("Row1",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold
        //             ),
        //           ),
        //         ),
        //
        //
        //     ),
        //     Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.green,
        //         child: Center(
        //           child: const Text("Row1",
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 20,
        //             fontWeight: FontWeight.bold
        //           ),
        //           ),
        //         ),
        //
        //
        //     ),
        //     Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.orange,
        //         child:
        //         Center(
        //           child: const Text("Row1",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold
        //             ),
        //           ),
        //         ),
        //     ),
        //   ],
        // )

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //
        //     Container(
        //       height:200,
        //       width:200,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height:200,
        //       width:200,
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       height:200,
        //       width:200,
        //       color: Colors.green,
        //     ),
        //
        //   ],
        // ),
        );
  }
}

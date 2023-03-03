import 'package:flutter/material.dart';
import 'check_signed_up.dart';
import 'signedIn.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isVisible1 = true;
  bool isVisible2 = true;
  bool isVisible3 = false;
  bool isVisible4 = false;
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child:  Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text(
              'LearnDartAndFlutter',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const Text(
                'Mixins, collections, closures..'
            ),

            Visibility(
              visible: isVisible3,
            child:
            SizedBox(
                  width: 300,
                  child:
            TextField(
              controller: controller1,
            ),
            ),
            ),
            Visibility(
              visible: isVisible3,
              child:
              Container(
                width: 300,
                alignment: Alignment.centerLeft,
                child:
                const Text(
                    'surname'
                ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child:
              SizedBox(
                width: 300,
                child:
                TextField(
                  controller: controller2,
                ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child:
              Container(
                width: 300,
                alignment: Alignment.centerLeft,
                child:
                const Text(
                    'name'
                ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child:
              SizedBox(
                width: 300,
                child:
                TextField(
                  controller: controller3,
                ),
              ),
            ),
            Visibility(
              visible: isVisible3,
              child:
              Container(
                width: 300,
                alignment: Alignment.centerLeft,
                child:
                const Text(
                    'age'
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
             child:
               Visibility(
                 visible: isVisible2,
                 child:
                  Container(
                    decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                            Border.all(
                              color: Colors.lightBlueAccent,
                              width: 2,
                            )
                      ),
                    child:
                      SizedBox(
                        width: 200,
                        child:
                        OutlinedButton(
                          onPressed:() {
                            setState(() {
                              isVisible1 = false;
                              isVisible2 = false;
                              isVisible3 = true;
                              isVisible4 = true;
                            });

                          },
                          child:
                            const Text(
                              'Sign up',
                              style:
                                TextStyle(
                                    fontSize: 30
                                ),
                            ),
                        ),
                      ),
                  ),
               ),
             ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child:
              Visibility(
                visible: isVisible4,
                child:
                Container(
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(
                        color: Colors.lightBlueAccent,
                        width: 2,
                      )
                  ),
                  child:
                  SizedBox(
                    width: 200,
                    child:
                    OutlinedButton(
                      onPressed:() {
                        setState(() {
                          isVisible1 = false;
                          isVisible3 = true;
                        });
                        var validation = Woman(
                              controller1.text, controller2.text, int.tryParse(controller3.text));
                        if (validation.errorName.isNotEmpty) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(validation.errorName),
                                );
                              });
                        }
                        else{
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>SignedIn(account: validation,)));
                        }
                      },
                      child:
                      const Text(
                        'Confirm',
                        style:
                        TextStyle(
                            fontSize: 30
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child:
              Visibility(
                visible: isVisible3,
                child:
                Container(
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(
                        color: Colors.lightBlueAccent,
                        width: 2,
                      )
                  ),
                  child:
                  SizedBox(
                    width: 200,
                    child:
                    OutlinedButton(
                      onPressed:() {
                        setState(() {
                          isVisible1 = true;
                          isVisible2 = true;
                          isVisible3 = !isVisible3;
                          isVisible4 = false;
                        });
                      },
                      child:
                      const Text(
                        'Back',
                        style:
                        TextStyle(
                            fontSize: 30
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        ),
          ],
        ),
      ),

    );
  }
}

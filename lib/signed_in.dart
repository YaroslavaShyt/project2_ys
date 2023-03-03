import 'package:flutter/material.dart';
import 'package:project2_ys/check_signed_up.dart';


class SignedIn extends StatelessWidget {
  SignedIn({super.key,  this.account});
  final account;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Hello, $account\nHere all the functions you can use:',
                style: const TextStyle(
                fontSize: 20
             ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                    width: 300,
                    child:
                    OutlinedButton(
                      onPressed:() {
                        var age = happyBirthday(account.age);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Joke. Very old: ${age()}'),
                              );
                            });
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                content: Text('You will be old :)'),
                              );
                            });
                      },
                      child:
                      const Text(
                        'Closure: define how old you will be in 15 years:',
                        style:
                        TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                  width: 300,
                  child:
                  OutlinedButton(
                    onPressed:() {
                      var map = {};
                      (account.name + account.surname).split('').forEach((x) => map[x] = !map.containsKey(x) ? (1) : (map[x] + 1));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content:
                              Text('This is your name/surname letters in list: ${(account.name + account.surname).split('')}'),
                            );
                          });
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content:
                              Text('This is your name/surname letters in set: ${(account.name + account.surname).split('').toSet()}'),
                            );
                          });
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content:
                              Text('This is your name/surname\'s letters occurrence in map: $map'),
                            );
                          });
                    },
                    child:
                    const Text(
                      'Collections: functions for your name/surname letters',
                      style:
                      TextStyle(
                          fontSize: 20
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
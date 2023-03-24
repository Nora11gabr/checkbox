import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool PY = false;
  bool CSharpe = false;
  bool Java = false;
  bool cpp = false;
  String textwidget = '';
  String textwidget2 = '';
  String textwidget3 = '';
  String textwidget4 = '';
  String? grades;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009788),
        title: Center(
          child: Text(
            'Task',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "What's your grade ?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 200,
                    child: RadioListTile(
                      activeColor: Color(0xff009788),
                      selected: "First" == grades ? true : false,
                      title: Text(
                        'First year',
                        style: TextStyle(fontSize: 22),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: "First",
                      groupValue: grades,
                      onChanged: (data) {
                        var snackbar = SnackBar(
                          content: Text('You choose the first grade '),
                          duration: Duration(seconds: 3),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        setState(() {
                          grades = data;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    child: RadioListTile(
                      activeColor: Color(0xff009788),
                      selected: "Third" == grades ? true : false,
                      title: Text(
                        'Third year',
                        style: TextStyle(fontSize: 22),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: "Third",
                      groupValue: grades,
                      onChanged: (data) {
                        var snackbar = SnackBar(
                          content: Text('You choose the third grade '),
                          duration: Duration(seconds: 3),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        setState(() {
                          grades = data;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 210,
                    child: RadioListTile(
                      activeColor: Color(0xff009788),
                      selected: "Second" == grades ? true : false,
                      title: Text(
                        'Second year',
                        style: TextStyle(fontSize: 22),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: "Second",
                      groupValue: grades,
                      onChanged: (data) {
                        var snackbar = SnackBar(
                          content: Text('You choose the second grade '),
                          duration: Duration(seconds: 3),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        setState(() {
                          grades = data;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 210,
                    child: RadioListTile(
                      activeColor: Color(0xff009788),
                      selected: "Fourth" == grades ? true : false,
                      title: Text(
                        'Fourth year',
                        style: TextStyle(fontSize: 22),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: "Fourth",
                      groupValue: grades,
                      onChanged: (data) {
                        var snackbar = SnackBar(
                          content: Text('You choose the fourth grade '),
                          duration: Duration(seconds: 3),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        setState(() {
                          grades = data;
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            color: Color(0xff009788),
            indent: 10,
            endIndent: 20,
            thickness: 3,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Which programming language do you use?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        child: CheckboxListTile(
                          activeColor: Color(0xff009788),
                          selected: cpp == true ? true : false,
                          title: Text(
                            'C++',
                            style: TextStyle(fontSize: 22),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: cpp,
                          onChanged: (data) {
                            setState(() {
                              cpp = data!;
                              textwidget = 'C++';
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: CheckboxListTile(
                          activeColor: Color(0xff009788),
                          selected: CSharpe == true ? true : false,
                          title: Text(
                            'C#',
                            style: TextStyle(fontSize: 22),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: CSharpe,
                          onChanged: (data) {
                            setState(() {
                              CSharpe = data!;
                              textwidget2 = 'C#';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        child: CheckboxListTile(
                          activeColor: Color(0xff009788),
                          selected: Java == true ? true : false,
                          title: Text(
                            'Java',
                            style: TextStyle(fontSize: 22),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: Java,
                          onChanged: (data) {
                            setState(() {
                              Java = data!;
                              textwidget3 = 'Java';
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: CheckboxListTile(
                          activeColor: Color(0xff009788),
                          selected: PY == true ? true : false,
                          title: Text(
                            'Python',
                            style: TextStyle(fontSize: 22),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: PY,
                          onChanged: (data) {
                            setState(() {
                              PY = data!;
                              textwidget4 = 'Python';
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 380,
                height: 200,
                color: Color(0xff009788),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This shows what you choose : ',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      textwidget,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      textwidget2,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      textwidget3,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      textwidget4,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

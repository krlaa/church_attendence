import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nice_button/nice_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gson/gson.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'cards.dart';
import 'checkAttend.dart';
import 'package:easy_dialog/easy_dialog.dart';

void main() => runApp(MyApp());

String name = "";
String grade = "";

String setNum = "";

String preKG = "";
String kgG = "";
String firstG = "";
String secondG = "";
String thirdG = "";
String fourthG = "";
String fifthG = "";
String sixthG = "";
String seventhG = "";
String eigthG = "";
String ninthG = "";
String tenthG = "";
String eleventhG = "";
String twevelthG = "";

String formattedDate="";

int weekNumber = 1;

List list = [];

bool broken = false;
bool passSet = true; 

List preK = [];
List kg = [];
List first = [];
List second = [];
List third = [];
List fourth = [];
List fifth = [];
List sixth = [];
List seventh = [];
List eigth = [];
List ninth = [];
List tenth = [];
List eleventh = [];
List twevelth = [];

final Firestore _db = Firestore.instance;



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromRGBO(33, 33, 33, 1), body: Main()));
  }
}


containsObject(obj, list) {
  var i;
  for (i = 0; i < list.length; i++) {
    if (list[i] == obj) {
      return true;
    }
  }

  return false;
}

search(obj, list, List searchList) {
  var i = 0;
  while (i < searchList.length) {
    if (searchList[i][0] == obj) {
      if(((int.parse(formattedDate.substring(0,2))*100)+int.parse(formattedDate.substring(3,5)))<=930){
      searchList[i].add(["W" + weekNumber.toString(), "P"]);}
      else{searchList[i].add(["W" + weekNumber.toString(), "L"]);}
      print("ur at " + i.toString());
      broken = true;
      break;
    } else
      broken = false;
    i++;
  }
  if (broken) {
  } else {
    searchList.add([
      name,
      ["W" + weekNumber.toString(), "P"]
    ]);
  }
}

Future setList(String key, bool alllow) async {
  DocumentReference ref = _db.collection('Students').document(key);
  if(key=="0"&&alllow){ref.updateData({'0': preKG});}
  if(key=="1"&&alllow){ref.updateData({'0': kgG});}
  if(key=="2"&&alllow){ ref.updateData({'0': firstG});}
  if(key=="3"&&alllow){ref.updateData({'0': secondG});}
  if(key=="4"&&alllow){ref.updateData({'0': thirdG});}
  if(key=="5"&&alllow){ref.updateData({'0': fourthG});}
  if(key=="6"&&alllow){ref.updateData({'0': fifthG});}
  if(key=="7"&&alllow){ref.updateData({'0': sixthG});}
  if(key=="8"&&alllow){ref.updateData({'0': seventhG});}
  if(key=="9"&&alllow){ref.updateData({'0': eigthG});}
  if(key=="10"&&alllow){ref.updateData({'0': ninthG});}
  if(key=="11"&&alllow){ref.updateData({'0': tenthG});}
  if(key=="12"&&alllow){ref.updateData({'0': eleventhG});}
  if(key=="13"&&alllow){ref.updateData({'0': twevelthG});}
}

getData() {
  Firestore.instance
      .collection('Students')
      .document('0')
      .snapshots()
      .listen((data) => preK = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('1')
      .snapshots()
      .listen((data) => kg = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('2')
      .snapshots()
      .listen((data) => first = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('3')
      .snapshots()
      .listen((data) => second = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('4')
      .snapshots()
      .listen((data) => third = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('5')
      .snapshots()
      .listen((data) => fourth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('6')
      .snapshots()
      .listen((data) => fifth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('7')
      .snapshots()
      .listen((data) => sixth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('8')
      .snapshots()
      .listen((data) => seventh = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('9')
      .snapshots()
      .listen((data) => eigth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('10')
      .snapshots()
      .listen((data) => ninth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('11')
      .snapshots()
      .listen((data) => tenth = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('12')
      .snapshots()
      .listen((data) => eleventh = gsonDecode(data['0']));
  Firestore.instance
      .collection('Students')
      .document('13')
      .snapshots()
      .listen((data) => twevelth = gsonDecode(data['0']));
}

class Main extends StatefulWidget {
  @override
  _Main createState() => _Main();
}

class _Main extends State<Main> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    Stream<NDEFMessage> stream = NFC.readNDEF();

    stream.listen((NDEFMessage message) {
      setState(() {
        
        DateTime now = DateTime.now();
       formattedDate = DateFormat('kk:mm').format(now);
        name = "${message.payload.substring(2, message.payload.length - 2)}";
        grade =
            "${message.payload.substring(message.payload.length - 2, message.payload.length)}";
        print((int.parse(formattedDate[1])*100)+int.parse(formattedDate.substring(3,5)));

        if (contains2(name, list)) {
          passSet=false;
          print('Uhooh');
        } 
        else {
          switch (grade) {
            case "pk":
              {
                search(name, preKG, preK);
                preKG = gsonEncode(preK);
                setNum = "0";
                break;
              }
            case "kg":
              {
                search(name, kgG, kg);
                kgG = gsonEncode(kg);
                setNum = "1";
                break;
              }
            case "01":
              {
                search(name, firstG, first);
                firstG = gsonEncode(first);
                setNum = "2";
                break;
              }
            case "02":
              {
                search(name, secondG, second);
                secondG = gsonEncode(second);
                setNum = "3";
                break;
              }
            case "03":
              {
                search(name, thirdG, third);
                thirdG = gsonEncode(third);
                setNum = "4";
                break;
              }
            case "04":
              {
                search(
                  name,
                  fourthG,
                  fourth,
                );
                fourthG = gsonEncode(fourth);
                setNum = "5";
                break;
              }
            case "05":
              {
                search(name, fifthG, fifth);
                fifthG = gsonEncode(fifth);
                setNum = "6";
              }
              break;
            case "06":
              {
                search(name, sixthG, sixth);
                sixthG = gsonEncode(sixth);
                setNum = "7";
                break;
              }
            case "07":
              {
                search(name, seventhG, seventh);
                seventhG = gsonEncode(seventh);
                setNum = "8";
                break;
              }
            case "08":
              {
                search(name, eigthG, eigth);
                eigthG = gsonEncode(eigth);
                setNum = "9";
                break;
              }
            case "09":
              {
                search(name, ninthG, ninth);
                ninthG = gsonEncode(ninth);
                setNum = "10";
                break;
              }
            case "10":
              {
                search(name, tenthG, tenth);
                tenthG = gsonEncode(tenth);
                grade = "11";
                break;
              }
            case "11":
              {
                search(name, eleventhG, eleventh);
                eleventhG = gsonEncode(eleventh);
                setNum = "12";
                break;
              }
            case "12":
              {
                search(name, twevelthG, twevelth);
                twevelthG = gsonEncode(twevelth);
                setNum = "13";
                break;
              }
          }
          list.add(name + ' ' + formattedDate);
          print("set num is " + setNum);
          setList(setNum,passSet);
        }
      });
      passSet=true;
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '${list[index]}',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: NiceButton(
            radius: 50,
            background: Colors.teal,
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new CheckAttend())),
            text: 'Check Attendence',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: NiceButton(
            text: '+1',
            elevation: 8.0,
            textColor: Colors.white,
            radius: 50.0,
            width: 60,
            background: Colors.teal,
            onPressed: () {
              weekNumber++;
              setState(() {
                list.clear();
              });
              print(weekNumber);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: NiceButton(
            text: 'Display',
            textColor: Colors.white,
            radius: 50.0,
            background: Colors.teal,
            onPressed: () {
              print(preK);
              print(kg);
              print(first);
              print(second);
              print(third);
              print(fourth);
              print(fifth);
              print(sixth);
              print(seventh);
              print(eigth);
              print(ninth);
              print(tenth);
              print(eleventh);
              print(twevelth);
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: EasyDialog(
                      height: 400,
                      contentList: [
                        Column(
                          children: <Widget>[
                            ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                Text(preK.toString()),
                                Text(kg.toString()),
                                Text(first.toString()),
                                Text(second.toString()),
                                Text(third.toString()),
                                Text(fourth.toString()),
                                Text(fifth.toString()),
                                Text(sixth.toString()),
                                Text(seventh.toString()),
                                Text(eigth.toString()),
                                Text(ninth.toString()),
                                Text(tenth.toString()),
                                Text(eleventh.toString()),
                                Text(twevelth.toString()),
                              ],
                            ),
                          ],
                        )
                      ],
                      description: Text(
                        "This is a basic dialog",
                      )).show(context));
            },
          ),
        )
      ],
    );
  }

  bool contains2(obj, list) {
    for (int i = 0; i < list.length; i++) {
      if (obj == list[i].toString().substring(0, list[i].toString().length - 6))
        return true;
    }
    return false;
  }
}

import 'package:flutter_widgets/flutter_widgets.dart';
import 'main.dart';
import 'package:flutter/material.dart';

int why = 0;

Card preKGC() => Card(
      child: ExpansionTile(
        title: Text('prek'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: preK.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${preK[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      initialScrollIndex: 1,
                      itemCount: preK[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            preK[thing][index].toString().substring(1,2) + 'eek '+ preK[thing][index].toString().substring(2,3)+' : '+preK[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card kGC() => Card(
      child: ExpansionTile(
        title: Text('kg'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: kg.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${kg[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: kg[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            kg[thing][index].toString().substring(1,2) + 'eek '+ kg[thing][index].toString().substring(2,3)+' : '+kg[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card firstGC() => Card(
      child: ExpansionTile(
        title: Text('first'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: first.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${first[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: first[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            first[thing][index].toString().substring(1,2) + 'eek '+ first[thing][index].toString().substring(2,3)+' : '+first[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card secondGC() => Card(
      child: ExpansionTile(
        title: Text('second'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: second.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${second[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: second[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            second[thing][index].toString().substring(1,2) + 'eek '+ second[thing][index].toString().substring(2,3)+' : '+second[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card thirdGC() => Card(
      child: ExpansionTile(
        title: Text('third'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: third.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${third[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: third[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            third[thing][index].toString().substring(1,2) + 'eek '+ third[thing][index].toString().substring(2,3)+' : '+third[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card fourthGC() => Card(
      child: ExpansionTile(
        title: Text('fourth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: fourth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${fourth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: fourth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            fourth[thing][index].toString().substring(1,2) + 'eek '+ fourth[thing][index].toString().substring(2,3)+' : '+fourth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card fifthGC() => Card(
      child: ExpansionTile(
        title: Text('fifth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: fifth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${fifth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: fifth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            fifth[thing][index].toString().substring(1,2) + 'eek '+ fifth[thing][index].toString().substring(2,3)+' : '+fifth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card sixthGC() => Card(
      child: ExpansionTile(
        title: Text('sixth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: sixth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${sixth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: sixth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            sixth[thing][index].toString().substring(1,2) + 'eek '+ sixth[thing][index].toString().substring(2,3)+' : '+sixth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card seventhGC() => Card(
      child: ExpansionTile(
        title: Text('seventh'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: seventh.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${seventh[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: seventh[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            seventh[thing][index].toString().substring(1,2) + 'eek '+ seventh[thing][index].toString().substring(2,3)+' : '+seventh[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card eigthGC() => Card(
      child: ExpansionTile(
        title: Text('eigth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: eigth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${eigth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: eigth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            eigth[thing][index].toString().substring(1,2) + 'eek '+ eigth[thing][index].toString().substring(2,3)+' : '+eigth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card ninthGC() => Card(
      child: ExpansionTile(
        title: Text('ninth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: ninth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${ninth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: ninth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            ninth[thing][index].toString().substring(1,2) + 'eek '+ ninth[thing][index].toString().substring(2,3)+' : '+ninth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card tenthGC() => Card(
      child: ExpansionTile(
        title: Text('tenth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: tenth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${tenth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: tenth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            tenth[thing][index].toString().substring(1,2) + 'eek '+ tenth[thing][index].toString().substring(2,3)+' : '+tenth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card eleventhGC() => Card(
      child: ExpansionTile(
        title: Text('eleventh'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: eleventh.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${eleventh[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      itemCount: eleventh[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            eleventh[thing][index].toString().substring(1,2) + 'eek '+ eleventh[thing][index].toString().substring(2,3)+' : '+eleventh[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

Card twevelthGC() => Card(
      child: ExpansionTile(
        title: Text('twevelth'),
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: twevelth.length,
            itemBuilder: (context, thing) {
              return ExpansionTile(
                title: Text(
                  '${twevelth[thing][0]}',
                  style: TextStyle(color: Colors.black),
                ),
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ScrollablePositionedList.builder(
                      addRepaintBoundaries: true,
                      addAutomaticKeepAlives: true,
                      addSemanticIndexes: true,
                      initialScrollIndex: 1,
                      itemCount: twevelth[thing].length,
                      itemBuilder: (context, index) {
                        if(index == 0){
                          return null;
                        }
                        else
                        return ListTile(
                          title: Text(
                            twevelth[thing][index].toString().substring(1,2) + 'eek '+ twevelth[thing][index].toString().substring(2,3)+' : '+twevelth[thing][index].toString().substring(4,6),
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );


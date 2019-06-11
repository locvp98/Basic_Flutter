import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void ham() {
  runApp(TaxxiViet());
}

class TaxxiViet extends StatefulWidget {
  @override
  _TaxiappState createState() => _TaxiappState();
}

class _TaxiappState extends State<TaxxiViet> {
  final _wordpair = <WordPair>[];
  final _fonlist = const TextStyle(fontSize: 18.0);
  final Set<WordPair> _savetate = new Set<WordPair>();
  var _color ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("LisView"),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.add), onPressed: null)
            ],
          ),
          body: Container(
          constraints: BoxConstraints.expand(),
          child: ListView.builder(itemBuilder: (context, index) {
        if (index.isOdd) {
//          index % 2 == 0 ? Colors.black : Colors.deepOrange;

          return Divider();


        }
        if (index >= _wordpair.length) {
          _wordpair.addAll(generateWordPairs().take(10));
        }
        return _buildSuggestions(_wordpair[index]);
      }),
    )
    ),
    );
  }

  Widget  _buildSuggestions(WordPair wordPair) {

    final bool alrealystate = _savetate.contains(wordPair);
    return ListTile(
      title: Text(wordPair.asUpperCase, style: TextStyle(color: _color)),
      trailing: Icon(

        alrealystate ? Icons.favorite : Icons.favorite_border,
        color: alrealystate ? Colors.deepOrange : null,
      ),
      onTap: () {
        setState(() {
          if (alrealystate) {
            _savetate.remove(wordPair);
          } else {
            _savetate.add(wordPair);
          }
        });
      },

    );
  }
}


  
//  void _pushsave(){
//    Navigator.of(context).push(
//      new MaterialPageRoute(builder: (BuildContext cotenxt){
//           final Iterable<ListTite> tite =_savetate.map((WordPair first){
//             return ListTile(
//               title: Text(
//                  first.asPascalCase,
//                 style:  _fonlist,
//               ),
//             );
//           });
//      })
//    );
//
//  }
//}

//class Taxiapp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final wordpair = WordPair.random();
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.white,
//          leading: IconButton(icon: Icon(Icons.menu),tooltip: "Navigation ", onPressed: null),//menu ben trai
//          title: Text("RanDom English",style: TextStyle(color: Colors.black),),
//          actions: <Widget>[
//            IconButton(icon: Icon(Icons.search),tooltip: "search", onPressed: null)
//          ],
//        ),
//
//        body: Container(
//          constraints: BoxConstraints.expand(),
//          padding: const EdgeInsets.all(8.0),
//          child: Center(
//            child: Text(wordpair.asUpperCase),
//          ),
//        ),
//      ),
//    );
//  }

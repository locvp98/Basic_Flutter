import 'package:flutter/material.dart';

void main() {
  runApp(Layout());
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSeletion = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "NASA đã phat hiêm bóng của Công Phượng",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 16.0, 16.0, 0),
                child: Text(
                  "Them như nasa thì bóng của công phượng giờ đang có mặt tại sao thủy ",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          )),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.deepOrange,
              ),
              tooltip: ("100"),
              onPressed: null),
          Text(
            "100",
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );

    Widget buildButton(IconData icon, String noidung){
      final titlecolor = Colors.blue;

      return Column(
        children: <Widget>[
          Icon(icon,color: titlecolor,),

          Container(
            padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
             child:Text(noidung, style: TextStyle(fontSize: 16.0, fontWeight:  FontWeight.w600),)
            ,
          )
        ],
      );
    }
    Widget forbuttomselction = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.navigate_next, "Next"),
          buildButton(Icons.share, "Share"),

        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/hochiminh.jpg',
            ),
            titleSeletion,
            forbuttomselction,
            
            Container(
              child: Text('''ssMới đây, diễn viên hài Lê Dương Bảo Lâm gây xôn xao với clip nghi là bị đánh khi đang phát cơm từ thiện trước cổng bệnh viện Ung Bướu (TP HCM). Tuy nhiên ngay sau đó, người ta đã nghi ngờ clip có tính dàn dựng. Người này bấy lâu nay không mấy tên tuổi và cũng được biết đến với các clip livestream bán hàng trên mạng. Tuy nhân vật chính đã trực tiếp đăng đàn khẳng định mình bị oan và "không dại gì dàn dựng cảnh bị đánh" như vậy, nhưng vụ việc vẫn khiến dư luận xôn xao.Mới đây, diễn viên hài Lê Dương Bảo Lâm gây xôn xao với clip nghi là bị đánh khi đang phát cơm từ thiện trước cổng bệnh viện Ung Bướu (TP HCM). Tuy nhiên ngay sau đó, người ta đã nghi ngờ clip có tính dàn dựng. Người này bấy lâu nay không mấy tên tuổi và cũng được biết đến với các clip livestream bán hàng trên mạng. Tuy nhân vật chính đã trực tiếp đăng đàn khẳng định mình bị oan và "không dại gì dàn dựng cảnh bị đánh" như vậy, nhưng vụ việc vẫn khiến dư luận xôn xao.Mới đây, diễn viên hài Lê Dương Bảo Lâm gây xôn xao với clip nghi là bị đánh khi đang phát cơm từ thiện trước cổng bệnh viện Ung Bướu (TP HCM). Tuy nhiên ngay sau đó, người ta đã nghi ngờ clip có tính dàn dựng. Người này bấy lâu nay không mấy tên tuổi và cũng được biết đến với các clip livestream bán hàng trên mạng. Tuy nhân vật chính đã trực tiếp đăng đàn khẳng định mình bị oan và "không dại gì dàn dựng cảnh bị đánh" như vậy, nhưng vụ việc vẫn khiến dư luận xôn xao.'''),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("Title"),
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new DemoItem();
        },
        itemCount: 20,
      ),
    );
  }
}

class DemoWidget extends StatelessWidget {
  final String text;

  DemoWidget(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Text(text ?? '无状态的小Demo'),
    );
  }
}

class DemoStateWidget extends StatefulWidget {
  final String text;

  DemoStateWidget(this.text);

  @override
  _DemoStateWidgetState createState() => _DemoStateWidgetState(text);
}

class _DemoStateWidgetState extends State<DemoStateWidget> {
  String text;

  _DemoStateWidgetState(this.text);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        text = "这就要变值了";
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(text ?? "这就是有状态demo"),
    );
  }
}

class DemoItem extends StatelessWidget {
  DemoItem() : super();

  _getBottomItem(IconData icon, String text) {
    return new Expanded(
        flex: 1,
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(
                icon,
                size: 16.0,
                color: Colors.grey,
              ),
              new Padding(padding: new EdgeInsets.only(left: 5.0)),
              new Text(
                text,
                style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Card(
        child: new FlatButton(
            onPressed: () {
              print('点击了哦');
            },
            child: new Padding(
                padding: new EdgeInsets.only(
                    left: 0.0, top: 10.0, right: 10.0, bottom: 10.0))),
      ),
    );
  }
}

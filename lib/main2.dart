// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Future<RssFeed> future;
//   var refresh = GlobalKey<RefreshIndicatorState>();

//   @override
//   void initState() {
//     super.initState();
//     refrescar();
//   }

//   Future<Null> refrescar() async {
//     refresh.currentState?.show(atTop: false);
//     setState(() {
//       future = getNews();
//     });
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 2.0, right: 2.0),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black12,
//           elevation: 0,
//           centerTitle: false,
//           title: Text(
//             widget.title,
//             /***************** */
//             //Tema configurado anteriormente
//             //**************** */
//             style: Theme.of(context).textTheme.title,
//             //style: TextStyle(
//             //color: Colors.black,
//             //fontSize: 30,
//             //),
//           ),
//           actions: <Widget>[
//             Padding(
//               padding: EdgeInsets.only(right: 32.0),
//               child: InkWell(
//                 child: Icon(
//                   Icons.share,
//                   color: Colors.black54,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: _body(),
//       ),
//     );
//   }

//  Widget _body() {
//     return RefreshIndicator(
//       key: refresh,
//       onRefresh: refrescar, //getNews,
//       child: FutureBuilder(
//         future: future,
//         builder: (BuildContext context, AsyncSnapshot<RssFeed> snapshot) {
//           switch (snapshot.connectionState) {
//             case ConnectionState.none:
//             case ConnectionState.active:
//             case ConnectionState.waiting:
//               return Center(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   CircularProgressIndicator(),
//                   Text('Cargando...'),
//                 ],
//               ));
//             case ConnectionState.done:
//               if (snapshot.hasError) return Text('Error: ${snapshot.error}');
//               return Stack(
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: ListView.separated(
//                       itemCount: snapshot.data.items.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return _item(snapshot.data.items[index]);
//                       },
//                       separatorBuilder: (context, index) => Divider(
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//           }
//           return null;
//         },
//       ),
//     );
//   }
/*

  Widget _item(RssItem item) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: DecorationImage(
                            image: NetworkImage(
                              item.enclosure.url,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                        height: 8.0,
                      ),
                      Text(
                        item.pubDate.substring(5, 22),
                        /***************** */
                        //Tema configurado anteriormente
                        //**************** */
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detalles(
                                    title: 'Noticias',
                                    url: item.link,
                                    key: null,
                                  )));
                    },
                    child: Text(
                      item.title,
                      //********************* */
                      //Tema configurado anteriormente
                      //********************* */
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Image.network(
                item.enclosure.url,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

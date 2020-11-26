import 'data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text('Toko Buku TIK'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          },
        )
      ],
    );


    ///create book tile hero
    createTile(Book book) => Hero(
      tag: book.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${book.title}');
          },
          child: Image(
            image: AssetImage(book.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}
class DataSearch extends SearchDelegate<String>{
 // ignore: non_constant_identifier_names
 final Book = [
   "CorelDraw",
   "Drafter",
   "Adobe Indesign",
   "Pemodelan Objek Dengan 3Ds Max 2014",
   "Penerapan Visualisasi 3D Dengan Autodesk Maya",
   "Teknik Lancar Menggunakan Adobe Photoshop",
   "Adobe Premiere Terlengkap dan Termudah",
   "Cad Series : Google Sketchup Untuk Desain 3D",
   "Webmaster Series : Trik Cepat Menguasai CSS",


 ];

 final recentBook = ["Drafter",
 ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ),
        onPressed: (){
      close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.white,
      child: Card(
        color: Colors.orange,
        child: Center(
          child: Text(query),
        ),
      ),
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentBook:Book.where((p) =>p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context,index)=>ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.book),
        title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0,query.length),
          style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold),
          children: [TextSpan(
            text: suggestionList[index].substring(query.length),
            style: TextStyle(color: Colors.grey)
          )]
        ),
        ),

    ),
      itemCount: suggestionList.length,
    );

  }

}
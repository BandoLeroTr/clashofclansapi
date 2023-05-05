import "package:flutter/material.dart";
import "settings/settings.dart";

class GetData extends StatelessWidget {
  Settings color = Settings();
  final dynamic urlId;
  final dynamic length;
  final dynamic title;
  final dynamic image;
  double space = 0.3;
  GetData(this.urlId, this.length, this.title, this.image) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text("$title")),
            IconButton(
              icon:Image.network(image),
              onPressed: null
            )
          ]
        ),
        backgroundColor: color.appBar,
        ),
      body: GridView.builder(        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: length,
          childAspectRatio: space,
        ),
        itemCount: urlId.length,
        itemBuilder: (BuildContext context, int i) {
          if (i < length) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Text(
                "${urlId[i]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            );
          }
          else {
            space = 0.1;
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Text(
                "${urlId[i]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            );
          }
        }
      )
    );
  }
}

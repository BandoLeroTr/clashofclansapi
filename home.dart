import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import 'package:audioplayers/audioplayers.dart';
import "dart:convert";
import "getdata.dart";

class Home extends StatelessWidget {
  @override
  Future<dynamic> img(name, count) async {
    final response = await http.get(
      //Uri.parse("http://192.168.2.161:8080/clash.json")
      Uri.parse("https://raw.githubusercontent.com/BandoLeroTr/clashofclansapi/main/clash.json")
    );
    return [
      json.decode(response.body)[json.decode(response.body)[name][count]],
      json.decode(response.body)[name][count + 1],
      json.decode(response.body)[name][count],
    ];
  }

  List<Widget> container() {
    List<Widget> containerList = [];
    List<dynamic> color = [Colors.black26, Colors.green, Colors.yellow, Colors.blue, Colors.brown];
    for (int i = 0; i < 5; i++) {
      containerList.add(
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color[i],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Wrap(
            children: buttons(i)
          )
        )
      );
    }
    return containerList;
  }

  List<Widget> buttons(int count) {
    List counter = [
      ["heroes", 5],
      ["elixirArmy", 16],
      ["darkElixirArmy", 8],
      ["elixirSpells", 7],
      ["darkElixirSpells", 5]
    ];
    List<Widget> imgButton = [];
    for (int i = 0; i < counter[count][1]; i++) {
      imgButton.add(
        FutureBuilder(
          future: img("${counter[count][0]}", i * 2),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return IconButton(
              icon: Image.network(
                "https://raw.githubusercontent.com/BandoLeroTr/clashofclansapi/main/" + "${counter[count][0]}/" + "$i" + ".png"
              ),
              iconSize: 30,
              onPressed: () {
								AudioPlayer player = AudioPlayer();
								player.play(AssetSource("sounds/click.mp3"));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => GetData(
                      snapshot.data[0], snapshot.data[1], snapshot.data[2],
                      "https://raw.githubusercontent.com/BandoLeroTr/clashofclansapi/main/" + "${counter[count][0]}/" + "$i" + ".png"

                    )
                  ),
                );
              }
            );
          }
        )
      );
    }
    return imgButton;
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        */
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(children: container())
            ),
          ),
        ),
      ]
    );
  }
}


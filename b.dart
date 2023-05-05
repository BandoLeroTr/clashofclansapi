import "package:http/http.dart" as http;
import "package:html/parser.dart";

List<String> title = [
  "heroes",
  "elixirArmy",
  "darkElixirArmy",
  "elixirSpells",
  "darkElixirSpells",
];

List<String> url = [
  "https://clashofclans.fandom.com/wiki/Heroes",
  "https://clashofclans.fandom.com/wiki/Elixir_Troops",
  "https://clashofclans.fandom.com/wiki/Dark_Elixir_Troops",
  "https://clashofclans.fandom.com/wiki/Elixir_Spells",
  "https://clashofclans.fandom.com/wiki/Dark_Spells",
];

List names = [];
List bodys = [];
List loop = [5,16,9,8,5];

void main() async {
  for (var start = 0; start < url.length; start++) {
    for (var i = 0; i < loop[start]; i++) {
      final response = await http.get(Uri.parse(url[start]));

      List body = parse(response.body)
          .getElementsByClassName("flexbox-display bold-text hovernav")[0]
          .children[i]
          .getElementsByTagName("div")[0]
          .getElementsByTagName("a")
          .where((e) => e.attributes.containsKey('href'))
          .map((e) => e.attributes['href'])
          .toList();

      List name = parse(response.body)
          .getElementsByClassName("flexbox-display bold-text hovernav")[0]
          .text.split("\n")
          .sublist(1);

      String u = "https://clashofclans.fandom.com${body[0]}";
      final response2 = await http.get(Uri.parse(u));
      final List document2 = parse(response2.body)
          .getElementsByClassName("wikitable floatheader row-highlight");

      if (start <= 2) {
        //heroes, elixirArmy, darkElixirArmy
        names.add('"${name[i]}"');
        names.add(
          document2[0]
          .getElementsByTagName("tbody")[0]
          .getElementsByTagName("tr")[0]
          .text.split("\n\n").length
        );

        final List<String> document3 = parse(response2.body)
            .getElementsByClassName("wikitable floatheader row-highlight")[0]
            .text.split("\n\n")
            .sublist(1);

        for (var bodyItem in document3) {
          bodys.add('"$bodyItem"');
        }
        printer("${names[0]} : $bodys,");
        bodys.clear();
        names.clear();
      }
      if (start == 3){//elixirSpells
        names.add('"${name[i]}"');
        names.add(
          parse(response2.body)
          .getElementsByClassName("stats-background")[0]
          .children[3]
          .getElementsByTagName("tr")[0]
          .text.split("\n\n").length
        );
        final List<String> document3 = parse(response2.body)
            .getElementsByClassName("stats-background")[0]
            .children[3]
            .text.split("\n\n")
            .sublist(1);

        for (var bodyItem in document3) {
          bodys.add('"$bodyItem"');
        }
        printer("${names[0]} : $bodys,");
        bodys.clear();
        names.clear();
      }
      if (start == 4) {//darkElixirSpells 0, 1, 2
        if (i <= 2) {
          names.add('"${name[i]}"');

          final List<String> document3 = parse(response2.body)
              .getElementsByClassName("stats-background")[0]
              .children[3]
              .text.split("\n\n")
              .sublist(1);

          for (var bodyItem in document3) {
            bodys.add('"$bodyItem"');
          }
          printer("${names[0]} : $bodys,");
          bodys.clear();
          names.clear();
        }

        if (i >= 3) {//darkElixirSpells 3, 4
          names.add('"${name[i]}"');
          final List<String> document3 = parse(response2.body)
              .getElementsByClassName("stats-background")[0]
              .children[4]
              .text.split("\n\n")
              .sublist(1);

          for (var bodyItem in document3) {
            bodys.add('"$bodyItem"');
          }
          printer("${names[0]} : $bodys,");
          bodys.clear();
          names.clear();
        }
      }
    }
    printer2('"${title[start]}" : $names,');
    names.clear();
  }
}

void printer(args) {
	//print(args);
}
void printer2(args) {
	print(args);
}

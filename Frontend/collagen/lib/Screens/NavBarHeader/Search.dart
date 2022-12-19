import 'package:flutter/material.dart';

class SearchBody extends StatefulWidget {
  static String routeName = "/search";

  const SearchBody({super.key});

  @override
  _SearchBody createState() => _SearchBody();
}

class _SearchBody extends State<SearchBody> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Search'),
    ),
  );
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Resesi 2023',
    'Resesi 2023',
    'Resesi 2023',
    'Resesi 2023',
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        if(query.isEmpty){
          close(context, null);
        } else {
          query ='';
        }
      },
    )
  ];

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index){
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: (){
              query = suggestion;

              showResults(context);
            },
          );
        },
    );
  }
}
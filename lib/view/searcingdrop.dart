import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class SearchableDropdownScreen extends StatefulWidget {
  const SearchableDropdownScreen({super.key});

  @override
  _SearchableDropdownScreenState createState() =>
      _SearchableDropdownScreenState();
}

class _SearchableDropdownScreenState extends State<SearchableDropdownScreen> {
  bool isSuggestions = false;
  final TextEditingController searchController = TextEditingController();

  List<SearchFieldListItem<String>> suggestions = [
    SearchFieldListItem("Bangladesh"),
    SearchFieldListItem("India"),
    SearchFieldListItem("Pakistan"),
    SearchFieldListItem("Sri Lanka"),
    SearchFieldListItem("Nepal"),
    SearchFieldListItem("Bhutan"),
    SearchFieldListItem("Maldives"),
    SearchFieldListItem("Afghanistan"),
    SearchFieldListItem("Myanmar"),
    SearchFieldListItem("Thailand"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Searchable Dropdown Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchField(
              onTap: () {
                isSuggestions = !isSuggestions;
                setState(() {});
              },
              controller: searchController,
              hint: "Search",
              searchInputDecoration: SearchInputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      isSuggestions = !isSuggestions;
                      setState(() {});
                    },
                    child: isSuggestions == true
                        ? const Icon(Icons.arrow_drop_down)
                        : const Icon(Icons.arrow_drop_up)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                ),
              ),
              itemHeight: 50,
              suggestions: isSuggestions == true ? searchController.text.isEmpty? suggestions:[] : [],
              onSuggestionTap: (value) {
                setState(() {
                  // selectedCountry = value.searchKey;
                  searchController.text = value.searchKey; // Set text in field
                });
                print("Selected country: ${value.searchKey}");
              },
            ),
          ],
        ),
      ),
    );
  }
}

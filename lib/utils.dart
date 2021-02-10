/*
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/entry_data.json');
    final data = await json.decode(response);
    setState(() {
      _itemsList = data["items"];
    });
  }*/

/////////////////
/* List<Language> addItemsToList() {
    List<Language> _itemsList = [];

    Language lag = new Language("Java",
        "Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.");
    Language lag1 = new Language("Kotlin",
        "Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference.");
    Language lag2 = new Language("Flutter",
        "Flutter is an open-source UI software development kit created by Google.");

    _itemsList.add(lag);
    _itemsList.add(lag1);
    _itemsList.add(lag2);
    return _itemsList;
  }
*/

//////////////////

/*  return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          ElevatedButton(
            child: Text('Load Data'),
            onPressed: addItemsToList,
          ),
          ListView.builder(
            itemCount: _itemsList.length,
            itemBuilder: _getRowWidget,
          ),
        ],
      ),
    );
*/

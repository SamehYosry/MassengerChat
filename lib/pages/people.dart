import 'package:flutter/material.dart';
import 'package:session11/widget/toDoList.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Stack(
        children: const[
          Icon(Icons.chat_bubble_outline_outlined),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 8,
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          )
        ],
      ),
      label: 'Chats',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people_alt),
      label: 'People',
    ),
  ];

  int selectedPage = 0;

  void onBottomNavBarChanged(value) {
    setState(() {
      selectedPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20,
                      child: ClipOval(
                        child: Image.asset("assets/iconImage/6.jpg"),
                      ),
                    ),
                  ),
                  const Text(
                    "People",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox()
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 25,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(115, 192, 184, 184),
                    ),
                    child: const Center(
                      child: Text(
                        "STORIES",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Text(
                    "ACTIVE(22)",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavBarItems,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.black,
          elevation: 20,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          selectedIconTheme: const IconThemeData(size: 35),
          currentIndex: selectedPage,
          onTap: onBottomNavBarChanged,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: booksImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        '${booksImages[index]}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        radius: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipOval(
                              child: Image.asset("${booksImages1[index]}")),
                        ),
                      ),
                    ),

                    /********************************************************************** */
                    GridView.builder(
                      itemBuilder: (_, item) {
                        return toDoItem(
                          title: myToDoList[index]['tiltle'],
                        );
                      },
                      itemCount: myToDoList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

Widget toDoItem({
  required String title,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 10),
    alignment: Alignment.centerLeft,
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:session11/widget/toDoList.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Chats",
        //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   leading: Padding(
        //     padding: const EdgeInsets.all(5.0),
        //     child: ClipOval(
        //       child: Image.asset('assets/iconImage/6.jpg'),
        //     ),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 15),
        //       child:
        //           Icon(Icons.assignment_turned_in, color: Colors.black, size: 29),
        //     )
        //   ],
        // ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(210),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: ClipOval(
                        child: Image.asset('assets/iconImage/6.jpg'),
                      ),
                    ),
                    const Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_calendar_outlined),
                    )
                  ],
                ),
                //text Field Search
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 215, 210, 210),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black45),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    //ROW OF STORY
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            //CIRCLE 1
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor:
                                        Color.fromARGB(115, 170, 166, 166),
                                    child: Icon(Icons.add,
                                        color: Colors.black, size: 33),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    "Your Story",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                )
                              ],
                            ),

                            const SizedBox(
                              width: 20,
                            ),
                            //CIRCLE 2
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 27,
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/iconImage/7.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("Brian")
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 27,
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/iconImage/3.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                                const Text("Jamie")
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            //CIRCLE 3
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/iconImage/1.jpg"),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 35, left: 35),
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Loredana",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            //CIRCLE 4
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: ClipOval(
                                    child:
                                        Image.asset("assets/iconImage/6.jpg"),
                                  ),
                                ),
                                const Text(
                                  "Gord",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            //CIRCLE 5
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: ClipOval(
                                    child:
                                        Image.asset("assets/iconImage/8.jpg"),
                                  ),
                                ),
                                const Text("Sameh"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: myToDoList1.length,
          itemBuilder: (_, item) {
            return toDoItem(
              title: myToDoList1[item]['tiltle'],
              desc: myToDoList1[item]['description'],
              time: myToDoList1[item]['time'],
              id: myToDoList1[item]['id'].toString(),
              
              isRedden: myToDoList1[item]['isredden'],
              circleAvatarPicture: myToDoList1[item]['circleAvatarPicture'],
            );
          },
        ),
      ),
    );
  }
}



Widget toDoItem(
    {required String title,
    required String desc,
    required String time,
    required String id,
    required int isRedden,
    required bool circleAvatarPicture,
    }) {
  return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
    child: Row(
      children: [
        //picture
        circleAvatarPicture
            ? CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    id,
                  ),
                ),
              )
            : Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: CircleAvatar(
                      radius: 27,
                      child: ClipOval(
                        child: Image.asset("assets/iconImage/9.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                          child: Image.asset("assets/iconImage/8.jpg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                if (isRedden == 1)
                  Text(
                    desc,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        //  color:isRedden? Colors.black54:Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                else if (isRedden == 2 || isRedden == 3 || isRedden == 4)
                  Text(
                    desc,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        //  color:isRedden? Colors.black54:Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                Text('  $time',
                    style: const TextStyle(fontSize: 15, color: Colors.black54)),
              ],
            ),
          ],
        ),
       
        const Expanded(child: SizedBox()),
        if (isRedden == 1)
          const CircleAvatar(
            radius: 5,
          )
        else if (isRedden == 3)
          CircleAvatar(
            radius: 10,
            child: ClipOval(
              child: Image.asset("assets/iconImage/3.jpg"),
            ),
          )
        else if (isRedden == 4)
          Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white60,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipOval(
                    child: Image.asset("assets/iconImage/5.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipOval(
                      child: Image.asset("assets/iconImage/9.jpg"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipOval(
                      child: Image.asset("assets/iconImage/7.jpg"),
                    ),
                  ),
                ),
              ),
            ],
          )
      ],
    ),
  );
}



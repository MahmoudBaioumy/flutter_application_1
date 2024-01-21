import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorapp.dart';
import 'package:flutter_application_1/user.dart';

class chat_view extends StatelessWidget {
  chat_view({super.key});

  List<usersmodel> users = [
    usersmodel(
        name: 'lio misse',
        image: 'assets/lio.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
    usersmodel(
        name: 'cr7',
        image: 'assets/cr7.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
    usersmodel(
        name: 'isco',
        image: 'assets/isco.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
    usersmodel(
        name: 'inesta',
        image: 'assets/inesta.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
    usersmodel(
        name: 'neymar',
        image: 'assets/neymar.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
    usersmodel(
        name: 'mo salah',
        image: 'assets/mo.jpg',
        lastmassege: 'Hallo I here',
        time: '10:00 am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorsapp.mostcolor,
        appBar: AppBar(
          backgroundColor: colorsapp.mostcolor,
          title: Text(
            'Chats',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: colorsapp.whitecolor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: colorsapp.whitecolor,
                ))
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      color: colorsapp.whitecolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        users[index].name,
                        style: TextStyle(color: colorsapp.whitecolor),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: users.length),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: colorsapp.whitecolor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      title: Text(
                        users[index].name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(users[index].lastmassege),
                      trailing: Text(users[index].time),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: users.length),
            ),
          ),
        ])
        
        );
  }
}

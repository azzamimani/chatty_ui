import 'package:chatty_ui/pages/chatpage.dart';
import 'package:chatty_ui/theme.dart';
import 'package:chatty_ui/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sabrina Carpenter",
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Travel Freelancer",
                style: TextStyle(fontSize: 16, color: lightBlueColor),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Friends", style: titleTextStyle),
                    ChatTile(
                      imageUrl: "assets/images/friend1.png",
                      name: "Joshuer",
                      text: "Sorry, you???re not my ty...",
                      time: "Now",
                      unread: true,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTile(
                        imageUrl: "assets/images/friend2.png",
                        name: "Gabriella",
                        text: "I saw it clearly and mig...",
                        time: "2:30",
                        unread: false),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Groups", style: titleTextStyle),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      splashColor: blueColor,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatPage()));
                      },
                      child: ChatTile(
                        imageUrl: "assets/images/group1.png",
                        name: "Jakarta Fair",
                        text: "Why does everyone ca...",
                        time: "11:11",
                        unread: false,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTile(
                      imageUrl: "assets/images/group2.png",
                      name: "Angga",
                      text: "Here here we can go...",
                      time: "7:11",
                      unread: true,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTile(
                      imageUrl: "assets/images/group3.png",
                      name: "Bentley",
                      text: "The car which does not...",
                      time: "7:11",
                      unread: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

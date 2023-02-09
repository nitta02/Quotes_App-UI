// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';

class Boddy extends StatefulWidget {
  const Boddy({super.key});

  @override
  State<Boddy> createState() => _BoddyState();
}

class _BoddyState extends State<Boddy> {
  final Colorchng = Colors.red;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: ListTile(
            // ignore: prefer_const_constructors
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/steve_jobs.jpg"),
            ),
            title: Text(
              "Steve Jobs",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma which is living with the results of other people's thinking"),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/james.webp"),
            ),
            title: Text(
              "James Cameron",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/nelson.jpg"),
            ),
            title: Text(
              "Nelson Mandela",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "The greatest glory in living lies not in never falling, but in rising every time we fall."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/aristotle.jpg"),
            ),
            title: Text(
              "Aristotle",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "It is during our darkest moments that we must focus to see the light."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/waldo.jpg'),
            ),
            title: Text(
              "Ralph Waldo Emerson",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "Do not go where the path may lead, go instead where there is no path and leave a trail."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/teresa.jpg'),
            ),
            title: Text(
              "Mother Teresa",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "Spread love everywhere you go.Let no one ever come to you without leaving happier."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/Anne.webp"),
            ),
            title: Text(
              "Anne Frank",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text("Whoever is happy will make others happy too."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/abraham.webp"),
            ),
            title: Text(
              "Abraham Lincoln",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "In the end, it's not the years in your life that count. It's the life in your years."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/Einstein.jpg'),
            ),
            title: Text(
              "Albert Einstein",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle:
                Text("The only mistake in life is the lesson not learned."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/maya.webp'),
            ),
            title: Text(
              "Maya Angelou",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text(
                "I’ve learned that no matter what happens, or how bad it seems today, life does go on, and it will be better tomorrow."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/tim.jpg"),
            ),
            title: Text(
              "Tim Rice",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text("The biggest lesson I had in my life was failure"),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/mary.webp'),
            ),
            title: Text(
              "Mary Engelbreit",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            subtitle: Text("Life’s too mysterious to take too serious."),
            trailing: IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.favorite_outline_sharp,
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

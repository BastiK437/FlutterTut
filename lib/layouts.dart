import 'package:demo_app/networking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Widget mainWidget() {
  return materialCard();
}

Widget materialCard() {
  return SizedBox(
    height: 240,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              "Danke fürs Zusehen :) du pisser",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text("Lasst gerne eine positive Bewertung hier"),
            leading: Icon(
              Icons.star_rate,
              color: Colors.blue[300],
            ),
          ),
          Divider(),
          ListTile(
            title: const Text(
              "Danke fürs Zusehen :)",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: buildBitcoinPrice(),
            leading: Icon(
              Icons.star_rate,
              color: Colors.blue[300],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget gridView() {
  return GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridList(50),
  );
}

List<Widget> _buildGridList(int i) => List.generate(
      i,
      (index) => Stack(
        alignment: const Alignment(0, 0.8),
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/150/'),
            radius: 150,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.black38,
            ),
            child: const Text(
              "Text",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

Widget container() {
  return Expanded(
      child: Container(
    decoration: BoxDecoration(
      color: const Color(0x85922222),
      border: Border.all(
        color: const Color(0x85000000),
        width: 5,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Image.network('https://picsum.photos/100'),
    margin: const EdgeInsets.all(4),
  ));
}

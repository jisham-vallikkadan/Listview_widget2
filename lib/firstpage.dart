import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  Widget listDetails(
    String letter,
    String name,
    String city,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(
          '$letter',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        radius: 30,
      ),
      title: Text(
        '$name',
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        'City:$city',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'List view search',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListTile(
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              leading: Icon(
                Icons.search,
                color: Colors.blueAccent,
              ),
              trailing: Icon(
                Icons.close,
                color: Colors.blueAccent,
              ),
              title: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 50),
                    border: InputBorder.none),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                // width: double.infinity,
                // height: double.infinity,
                color: Colors.white,
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        'Peader',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        'City: Boronow',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'T',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        'Tiphany',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        'City: Mingshuihe',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        'Putnam',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        'City: Ranchuelo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        'Pietro',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        'City: Ciomas',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          'J',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        'Abc',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        'City: ABCDEF',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    listDetails('A', 'Anu', 'Malappuram'),
                    listDetails('M', 'Manu', 'Manjeri'),
                    listDetails('R', 'Ramu', 'Palakkad'),
                    listDetails('J', 'Jaseem', 'kottayam'),
                    listDetails('A', 'Anu', 'Malappuram'),
                    listDetails('M', 'Manu', 'Manjeri'),
                    listDetails('R', 'Ramu', 'Palakkad'),
                    listDetails('J', 'Jaseem', 'kottayam'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

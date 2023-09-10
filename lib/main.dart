import 'package:flutter/material.dart';


/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  TextEditingController textarea = TextEditingController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle),
        title: const Center(
            child:Text('Calculator')),
        actions: const [

          Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(

            children: [
              TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: "Enter Number",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.deepPurpleAccent)
                    )
                ),

              ),

              /*
              Another Option Start

              const SizedBox(
                height: 30,
              ),
              ElevatedButton( style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.orange,
                minimumSize: const Size(350, 80),

                textStyle: const TextStyle(fontSize: 28),
              ),
                child: const Text('+'),
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              FloatingActionButton.extended(
                label: const Text('Download'), // <-- Text
                backgroundColor: Colors.black,
                icon: const Icon( // <-- Icon
                  Icons.add,
                  size: 24.0,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed:  () {},
                  icon: const Icon(Icons.save),
                  label: const Text('Save')),

                  Another Option End .

               */


              // Spacing
              Container(height: 20.0),

              // Pill shaped
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 200.0, vertical: 25.0),
                  primary: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              // Spacing
              Container(height: 20.0),

              // Pill shaped
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 200.0, vertical: 25.0),
                  primary: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              // Spacing
              Container(height: 20.0),

              // Pill shaped
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 200.0, vertical: 25.0),
                  primary: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "*",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              // Spacing
              Container(height: 20.0),

              // Pill shaped
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 200.0, vertical: 25.0),
                  primary: Colors.deepPurpleAccent,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "/",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),

            ],

          )
        //child: _widgetOptions.elementAt(_selectedIndex),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}



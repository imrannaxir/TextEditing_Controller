import 'package:flutter/material.dart';

class MyTextEditingController extends StatefulWidget {
  const MyTextEditingController({required this.title, Key? key})
      : super(key: key);

  final String title;

  @override
  State<MyTextEditingController> createState() =>
      _MyTextEditingControllerState();
}

class _MyTextEditingControllerState extends State<MyTextEditingController> {

  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search,size: 32,),
        ],
      ),
      body: myTextEditingController(size),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myTextEditingController(size){
    return Container(
      height: size.height - kToolbarHeight - 70,
      width: size.width,
      color: Colors.pink,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //         'assets/images/mani.jpg',
      //     ),
      //   ),
      // ),

      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: size.height*0.15,
              width: size.width*0.8,
              child:  Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    labelText: 'Enter Your Name : ',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.15,
            width: size.width*0.8,
            child:  Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: mailController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  labelText: 'Enter Your Name : ',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.15,
            width: size.width*0.8,
            child:  Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  labelText: 'Enter Your Name : ',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                  ),
                ),
              ),
            ),
          ),

          RaisedButton(
              onPressed: (){
                print(nameController.text);
                print(mailController.text);
                print(passwordController.text);
                nameController.clear();
                mailController.clear();
                passwordController.clear();
              },
          child: const Text('SUBMIT'),
          ),
        ],
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: "INCREMENT",
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: "DECREMENT",
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar(){
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 32,),label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance,size: 32,),label: 'My Account'),
          BottomNavigationBarItem(icon: Icon(Icons.delete,size: 32,),label: 'Delete Data'),
        ],
      ),
    );
  }

  Widget myDrawer(){
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(Icons.person,size: 32,),
              title: Text('Jagu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.account_circle,size: 32,),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(Icons.account_balance,size: 32,),
              title: Text(
                'My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
        ],
      ),
    );
  }

}

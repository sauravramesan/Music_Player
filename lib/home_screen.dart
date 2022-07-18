import 'package:flutter/material.dart';
import 'new_box.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      key: _key,
      drawer: Drawer(
        backgroundColor: Colors.grey[300]
      ), 
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: NewBox(
                            child: IconButton(onPressed: () => _key.currentState!.openDrawer(
                            ), 
                            icon: const Icon(Icons.menu)),
                          ),
                        ),
                        const Text('M I S S I O N   M U S I C'),
                        const SizedBox(
                          height: 60,
                          width: 60,
                          child: NewBox(
                            child: Icon(Icons.search),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white70,
      ),
      body: Container(
        // child: GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //   ),
        //   itemCount: 12,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Card(
        //       color: Colors.white,
        //       child: Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: Image.asset("assets/images.png"),
        //       ),
        //     );
        //   },
        // ),
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(5),
              sliver: SliverGrid.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Flexible(flex: 5, child: Image.asset("assets/upload.png")),
                        Flexible(flex: 1, child: Text("Upload")),
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Flexible(flex: 5, child: Image.asset("assets/download.png")),
                        Flexible(flex: 1, child: Text("Download")),
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.green[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.green[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution is coming...'),
                    color: Colors.green[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution, they...'),
                    color: Colors.green[600],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

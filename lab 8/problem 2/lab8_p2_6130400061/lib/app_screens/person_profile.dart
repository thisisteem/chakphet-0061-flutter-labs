import 'package:flutter/material.dart';

class PersonProfile extends StatelessWidget {
  const PersonProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    debugPrint(screenW.toString());

    return Container(
        padding: const EdgeInsets.all(15),
        child: screenW <= 600
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildStack(),
                  const Spacer(),
                  _buildCard(),
                  const Spacer(),
                  _buildStars(),
                  const Spacer(),
                ],
              )
            : Row(
                children: [
                  _buildStack(),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCard(),
                        _buildStars(),
                      ],
                    ),
                  )
                ],
              ));
  }

  Widget _buildStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/dumbledore.jpg'),
          radius: 150,
        ),
        Positioned(
          bottom: 40,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
            child: const Text(
              'Albus Dumbledore',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCard() {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Hogwarts Castle, Highlands',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('Bangkok, Thailand'),
            leading: Icon(
              Icons.place,
              color: Colors.blue[500],
            ),
          ),
          const Divider(thickness: 1.49),
          ListTile(
            title: const Text(
              '(+66) 85-475-6961',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.phone_android,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: const Text('a.dumbledore@hogwarts.ac.th'),
            leading: Icon(
              Icons.email,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStars() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.star, color: Colors.redAccent),
        Icon(Icons.star, color: Colors.redAccent),
        Icon(Icons.star, color: Colors.redAccent),
        Icon(Icons.star, color: Colors.redAccent),
        Icon(Icons.star_half, color: Colors.redAccent),
      ],
    );
  }
}

class PersonProfileRotate extends StatelessWidget {
  const PersonProfileRotate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

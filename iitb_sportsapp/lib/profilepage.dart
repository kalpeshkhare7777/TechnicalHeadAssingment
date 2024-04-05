import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(

            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
                  const Text("Message"),



                
              
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Posts", 900),
    ProfileInfoItem("Followers", 120),
    ProfileInfoItem("Following", 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Row(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(child: _singleItem(context, item)),
                  ],
                )))
            .toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 200),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.deepPurple, Colors.deepPurple]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  height: 170,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/person.jpg')),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      heroTag: 'follow',
                      elevation: 0,
                      label: const Text("Follow"),
                      icon: const Icon(TablerIcons.plus),
                    ),
                    const SizedBox(width: 16.0),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      heroTag: 'message',
                      elevation: 0,
                      label: const Text("Message"),
                      icon: const Icon(TablerIcons.message),
                    ),
                  ],
                ),
                
                const _ProfileInfoRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

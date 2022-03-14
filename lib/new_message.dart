import 'package:flutter/material.dart';
import 'package:flutter_telegram/themes.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBar(),
      body: body(),
      floatingActionButton: fab(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kBlue2Color,
      elevation: 2,
      title: const Text('New Message'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded)
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sort)
        ),
      ],
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.group_outlined),
            title: const Text('New Group'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline_rounded),
            title: const Text('New Secret Chat'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.campaign_outlined),
            title: const Text('New Channel'),
            onTap: () {},
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: kWhiteSmokeColor,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: const Text('Sorted by last seen time'),
          ),
          Column(
            children: [1,2,3,4,5,6,7,8,9,10].map((e) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('U$e'),
                  radius: 25,
                ),
                title: Text('User $e', style: TextStyle(fontWeight: bold)),
                subtitle: Text('last seen recently',
                  style: TextStyle(color: kGreyColor, fontWeight: semiBold)
                ),
                onTap: () {},
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget fab() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: kBlue3Color,
      child: const Icon(Icons.person_add_alt_1_rounded),
    );
  }
}

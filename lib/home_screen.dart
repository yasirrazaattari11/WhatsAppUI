import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(child: Text('Calls')),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: '2',
                          child: Text('Settings'),
                        ),
                        PopupMenuItem(
                          value: '3',
                          child: Text('Logout'),
                        )
                      ]),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title:  Text('Yasir Raza'),
                    subtitle: Text('How are you?'),
                    trailing: Text('11:23 AM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  if(index == 0){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green,
                                      width: 4
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                            ),
                            title:  Text('Yasir Raza'),
                            subtitle: Text('45m ago'),
                          ),
                        ],
                      ),
                    );
                  }
                  else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.green,
                                width: 4
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        ),
                      ),
                      title:  Text('Yasir Raza'),
                      subtitle: Text('45m ago'),
                    );
                  }

                },
              ),
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title:  Text('Yasir Raza'),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child:  Text(index/2 == 0 ? 'Missed Audio Call' : 'Missed Video Call')

                    ),
                    trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call_outlined),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

 import 'package:flutter/material.dart';
import 'package:snaptube/widget/cityCard.dart';

class Module9Class3 extends StatefulWidget {
  const Module9Class3({super.key});

  @override
  State<Module9Class3> createState() => _Module9Class3State();
}

class _Module9Class3State extends State<Module9Class3> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('This Is  Extra  Class In flutter , Creat Drewer'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text:'Home',),
            Tab(
              icon: Icon(Icons.star),
              text:'star',),
            Tab(
              icon: Icon(Icons.favorite),
              text:'favorite',),
            Tab(
              icon: Icon(Icons.save_alt),
              text:'save',),

          ]),
          backgroundColor: Colors.green,
        ),
        body:TabBarView(

          children: [
            cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn1qTbcTEeQj6FrEKaa7IHd_5zwaiwdHqJCw&s', city: 'Bangladesh',),
            cityCard(image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/d4/8f/11/tajhat-palace-front-right.jpg?w=1400&h=1400&s=1', city: 'Rangpur',),
            cityCard(image: 'https://t3.ftcdn.net/jpg/05/27/07/26/360_F_527072634_v3176DmiDEVAPLbOkfa1OuUSgrURpfuV.jpg', city: 'Thakurgaon',),
            cityCard(image: 'https://cdn.dhakapost.com/media/imgAll/BG/2023June/dinajpur-20230615131601.jpg', city: 'Dinajpur',),
              ],) ,
        drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
              CircleAvatar(
                radius:35,
                backgroundImage: NetworkImage('https://instagram.fdac24-5.fna.fbcdn.net/v/t51.2885-19/509105991_17936834667019623_5431665529560713625_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fdac24-5.fna.fbcdn.net&_nc_cat=103&_nc_oc=Q6cZ2QG64O5ACO9jN2M4qg1rcXM3HwlTNV1L5nz4ysnJtiuIQoyuhcO-bO50DpM_c1dxGK4&_nc_ohc=W9C_r1ImZqYQ7kNvwHNx7Vi&_nc_gid=bgutbbNvZHUdydVMoLO6vQ&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AfNCy0jXYvEKEXgk91eSwF-AjPrFlvoSQ4o2_AsEqb6-YQ&oe=685F380F&_nc_sid=7a9f4b'),
      
              ),
                SizedBox(
                  height: 25,),
                Text('Delwar Hossain  Sadhin'
                ,style: TextStyle(
                    fontSize:18 ,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),
                ),
      
                Text('sadhin2814gmail.com'
                  ,style: TextStyle(
                      fontSize:14 ,
                      color: Colors.blue
                  ),
                ),
              ],
            ),),
           Divider(
             thickness: 4,
             color: Colors.yellow
           ),
            ListTile(title:
            Text("Home"),
            onTap: () {},
            ),
            Divider(
                thickness: 4,
                color: Colors.red
            ),
            ListTile(title:
            Text("Item"),
              onTap: () {},
            ),
            Divider(
              thickness: 4,
              color: Colors.blueGrey,
            ),
            ListTile(title:
            Text("Profile"),
              onTap: () {},
            ),
      
            Divider(
              thickness:5,
              color: Colors.blue,
            ),
            ListTile(title:
            Text("Settings"),
              onTap: () {},
            ),
            Divider(
              thickness: 5,
              color: Colors.black26,
            ),
            ListTile(title:
            Text("New Group"),
              onTap: () {},
            ),
            Divider(),
            ListTile(title:
            Text(" New Features"),
              onTap: () {},
            ),
            Divider(
              thickness: 5,
              color: Colors.blue,
            ),
            ListTile(title:
            Text("Contacts"),
              onTap: () {},
            ),
            ListTile(title:
            Text("Calls"),
              onTap: () {},
            ),
            ListTile(title:
            Text("Wallet"),
              onTap: () {},
            ),
          ],
        )
      ),
      ),
    );
  }
}

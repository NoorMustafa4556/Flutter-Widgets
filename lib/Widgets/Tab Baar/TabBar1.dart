import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class Tabbar1 extends StatefulWidget {
  const Tabbar1({super.key});

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Tab Bar View",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),

              Tab(
                child: Text(
                  'Setting',
                  style: TextStyle(
                      color:
                  Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'About',
                 style: TextStyle(color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Tab 1\nHome\nWellcome Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Center(child: Text("Profile\n UserName : NoorMustafa4556",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),))),
                SizedBox(height: 20,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Container(

                        child: Image.asset(
                          'assets/images/cover.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(

                      top: 190,
                      right: 110,

                      // Adjust this value to control how much the avatar overlaps
                      left: 100, // Center the image horizontally
                      child: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/profile.png'),
                        radius: 90,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 110), // Adjust this value to control the spacing
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      "Noor Mustafa\nSon Of Muhammad Rafique \n"
                          "From Liaquat Pur\nStudying In IUB\nBS Computer Science",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    ListTile(
                
                
                      title: Text("Noor Mustafa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile.png'),
                        radius: 30,
                
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: (){},
                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    ListTile(
                
                      onTap: (){},
                      title: Text("Create a new Profile or page",style: TextStyle(fontSize: 20),),
                      leading: CircleAvatar(
                        child: Icon(Icons.add,size: 30,),
                        radius: 30,
                      ),
                
                    ),
                    SizedBox(height: 30,),
                    Row(
                
                      children: [
                
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.5)
                                )
                              ),
                              child: Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.radio,size: 30,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20.0),
                                        child: Text("Feeds"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.access_alarm,size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text("Memories"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                
                      children: [
                
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.save_alt,size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text("Saved"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.group,size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text("Groups"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                
                      children: [
                
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.group,size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text("Friends(6 online)"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 170,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.5)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.event,size: 30,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text("Events"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 40,
                        width: 370,
                        child: Center(child: Text("See more")),
                        decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.black
                         )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Help & support"),
                      leading: CircleAvatar(
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.question_mark),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Settings & privacy"),
                      leading: CircleAvatar(
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.settings),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Also From Meta"),
                      leading: CircleAvatar(
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.dashboard),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 40,
                        width: 370,
                        child: Center(child: Text("Log out")),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0,top: 10),
                          child: InkWell(
                
                            onTap: (){},
                              child: Icon(Icons.more_vert)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0),
                         child: Text("Files",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                        width: 370,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TextField(
                
                              decoration: InputDecoration(
                                hintText: "Search",
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                
                
                                      width: 3,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                
                                      width: 3,
                                    )
                                ),
                                border: OutlineInputBorder(
                
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                
                                    )
                
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                
                           InkWell(
                             onTap: (){},
                             child: Container(
                               width: 370,
                               height: 190,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Device Storage",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 60,),
                                  Row(
                                    children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("62.2 GB",style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("| 64.0 GB",
                                              style: TextStyle(
                                                fontSize: 15,
                
                                            ),),
                                          )
                                        ],),
                                  ],),
                                  Container(
                                    width: 350,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  )
                
                                ],
                              ),
                              decoration: BoxDecoration(
                
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(13)
                              ),
                             ),
                           )
                          ],
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 10),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                             child: Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 18.0),
                                   child: Icon(Icons.photo,size: 40,color: Colors.blue,),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child:
                                   Text("Photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                 ),
                                 Text("1025",style: TextStyle( fontSize: 18),),
                               ],
                             ),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.black,
                
                               ),
                               borderRadius: BorderRadius.circular(10)
                             ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 18),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Icon(Icons.video_call,size: 40,color: Colors.deepPurpleAccent,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                     Text("Videos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                  Text("967",style: TextStyle( fontSize: 18),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 18),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Icon(Icons.audio_file,size: 40,color: Colors.deepOrange,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Text("Audio",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                  Text("62",style: TextStyle( fontSize: 18),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 10),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Icon(Icons.file_copy_sharp,size: 40,color: Colors.blue,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Text("Document",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                  Text("78",style: TextStyle( fontSize: 15),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 18),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Icon(Icons.apps,size: 40,color: Colors.green,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Text("APKs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                  Text("1",style: TextStyle( fontSize: 18),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0,left: 18),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 130,
                
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Icon(Icons.notes,size: 40,color: Colors.brown,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Text("Archives",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  ),
                                  Text("4",style: TextStyle( fontSize: 18),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: InkWell(
                              onTap: (){},
                              child: Text("Sources",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Messanger"),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 30,
                        child: Container(
                          child: FaIcon(
                            FontAwesomeIcons.facebookMessenger,
                            color:Colors.pinkAccent ,
                            size: 30,
                          ),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("WhatsApp"),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 30,
                        child: Container(
                          child: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color:Colors.white ,
                            size: 30,
                          ),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Downloads"),
                      leading: CircleAvatar(

                        backgroundColor: Colors.green,
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.download,color: Colors.white,),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Bluetooth"),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.bluetooth,color: Colors.white,),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Recently Deleted"),
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        radius: 30,
                        child: Container(
                          child: Icon(Icons.delete,color: Colors.white,),
                        ),
                      ),

                    ),
                    Divider(
                      thickness: 0.015,
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

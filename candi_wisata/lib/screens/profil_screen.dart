import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = true;
  String fullName = 'aini';
  String userName = 'nung';
  int favoriteCandiCount = 0;

  //TODO: 5. IMPLEMENTASI FUNGSI SIGN IN
  void signIn(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }
  //TODO: 5. IMPLEMENTASI FUNGSI SIGN OUT
  void signOut(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO: 2. Buat bagian profile header
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: 
                              AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if(isSignedIn)
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ))
                      ],
                    ),
                  ),
                ),
                // TODO: 3. Buat bagian profile info (isinya info profil)
                //BARIS 1 PENGGUNA
                const SizedBox(
                  height: 20,),
                Divider(
                  color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber,),
                          SizedBox(width: 8,),
                          Text('Pengguna', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),)
                      ],),
                    ),
                    Expanded(
                      child: Text(': $userName',
                      style: TextStyle(fontSize: 18),
                      ),),
                  ],
                ),
                //BARIS 2 NAMA
                const SizedBox(
                  height: 4,),
                Divider(
                  color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text('nama', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),)
                      ],),
                    ),
                    Expanded(
                      child: Text(': $fullName',
                      style: TextStyle(fontSize: 18),
                      ),),
                    if(isSignedIn) const Icon(Icons.edit),
                  ],
                ),
                //BARIS 3 FAVORIT
                const SizedBox(
                  height: 4,),
                Divider(
                  color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red,),
                          SizedBox(width: 8,),
                          Text('favorit', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),),
                      ],),
                    ),
                    Expanded(
                      child: Text(': $favoriteCandiCount',
                      style: TextStyle(fontSize: 18),
                      ),),
                  ],
                ),
                // TODO: 4. Buat bagian profile action (isinya tombol signin/signout)
                const  SizedBox(
                  height: 4,),
                Divider(
                  color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 20,
                ),
                isSignedIn 
                ? TextButton(onPressed: signOut, child: const Text('Sign Out'))
                : TextButton(onPressed: signIn, child: const Text('Sign In')),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
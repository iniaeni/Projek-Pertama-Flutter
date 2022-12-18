import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final listPopMenu = {'Profil', 'Logout'};

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   actions: [
      //     PopupMenuButton(
      //       onSelected: ((value) {
      //         handleClick(context, value);
      //       }),
      //       itemBuilder: ((context) {
      //         return listPopMenu.map((choice) {
      //           return PopupMenuItem(value: choice, child: Text(choice));
      //         }).toList();
      //       }),
      //     ),
      //   ],
      // ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Image.asset('assets/img/welcome.png'),
          ),
          Text(
            "Selamat Datang, user !",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Text("Ini adalah halaman home tempat navigasi berawal.")
        ],
      )),
    );
  }

  // void handleClick(BuildContext context, String value) {
  //   switch (value) {
  //     case 'Logout':
  //       const snackBar = SnackBar(content: Text("Logout Berhasil !"));
  //       ScaffoldMessenger.of(context).showSnackBar(snackBar);

  //       Navigator.of(context)
  //           .pushNamedAndRemoveUntil('login', (route) => false);
  //       break;
  //     case 'Profile':
  //     Navigator.of(context)
  //           .pushNamed('profile');
        
  //   }
  // }
}

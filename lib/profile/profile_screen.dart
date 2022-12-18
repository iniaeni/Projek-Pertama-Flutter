import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset(
                    "assets/img/me.jpeg",
                    width: 160,
                    height: 160,
                  ),
                ),
              ),
            ),
            Center(
              child: Text("Hello !",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Panggilan",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text("Aeni",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("sitinuraen20@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Status",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Pelajar",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hobi",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Menggambar ",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
// SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton.icon(
            //     icon: const Icon(Icons.home),
            //     onPre            ssed: () => redirectToHome(context),
            //     label: const Text("Kembali ke Home"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  void redirectToHome(context) {
    Navigator.of(context).pop();
  }
}

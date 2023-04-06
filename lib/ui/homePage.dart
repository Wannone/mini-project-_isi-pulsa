import 'package:flutter/material.dart';
import 'package:isi_pulsa/ui/login.dart';
import 'package:isi_pulsa/ui/tabBarController.dart';

class HomePage extends StatelessWidget {
  final String noTelp;
  const HomePage({Key? key, required this.noTelp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 210,
            width: double.infinity,
            child: Image.asset(
              "assets/image/Home_Background.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
                  margin: const EdgeInsets.only(top: 30),
                  width: 320,
                  height: 190,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color.fromARGB(255, 56, 131, 79)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginView()),
                                  );
                                },
                                child: Image.asset("assets/icon/back.png")),
                            Text(
                              noTelp,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "Sisa Pulsa",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Rp 30.000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  "Kuota",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text("3 GB",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white))
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        RichText(
                            text: const TextSpan(
                                text: "Berlaku sampai dengan ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                                children: [
                              TextSpan(
                                  text: "30 April 2023",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ]))
                      ]),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: TabBarController(
                    noTelp: noTelp,
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

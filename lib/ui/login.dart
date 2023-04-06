import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:isi_pulsa/ui/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isChecked = false;
  bool value = false;
  bool phnvalue = false;
  final TextEditingController _phonenumber = TextEditingController();
  String text = "";
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _phonenumber.text = "";
    _phonenumber.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _phonenumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 75),
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/image/login.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Silahkan Masukkan nomor telepon kamu",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Nomor HP",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Form(
            key: _formKey,
            child: TextFormField(
              controller: _phonenumber,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Cth. 08129011xxxx"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: const Color(0xff5DB075),
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),
              const Text(
                "Ingat Saya",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        noTelp: _phonenumber.text,
                      ),
                    ));
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: (_phonenumber.text.isEmpty)
                    ? Color.fromARGB(255, 202, 202, 202)
                    : Color(0xff5DB075)),
            child: const Text(
              "MASUK",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ));
  }
}

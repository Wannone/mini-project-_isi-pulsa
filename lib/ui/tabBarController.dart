import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:isi_pulsa/ui/TabBarView/paket.dart';
import 'package:isi_pulsa/ui/TabBarView/pulsa.dart';

class TabBarController extends StatelessWidget {
  final String noTelp;
  const TabBarController({Key? key, required this.noTelp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            toolbarHeight: 0,
            bottom: const TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: "Pulsa",
              ),
              Tab(
                text: "Paket",
              )
            ]),
          ),
          body: TabBarView(children: [
            BarPulsa(
              noTelp: noTelp,
            ),
            BarPaket(
              noTelp: noTelp,
            ),
          ]),
        ));
  }
}

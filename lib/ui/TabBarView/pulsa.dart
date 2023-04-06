import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:isi_pulsa/model/listpulsa.dart';
import 'package:isi_pulsa/ui/detailPagePulsa.dart';

class BarPulsa extends StatelessWidget {
  final String noTelp;
  const BarPulsa({Key? key, required this.noTelp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final ListPulsa pulsa = PulsaList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPagePulsa(
                    noTelp: noTelp,
                    title: pulsa.nama,
                    harga: pulsa.harga,
                  ),
                ),
              );
            },
            child: daftarPulsa(pulsa),
          );
        },
        itemCount: PulsaList.length,
      ),
    );
  }
}

Widget daftarPulsa(ListPulsa pulsa) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    alignment: Alignment.center,
    height: 80,
    padding: const EdgeInsets.only(right: 80, left: 80),
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                pulsa.nama,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                pulsa.harga,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

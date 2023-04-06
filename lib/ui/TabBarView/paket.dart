import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:isi_pulsa/model/listpaket.dart';
import 'package:isi_pulsa/ui/detailPagePaket.dart';

class BarPaket extends StatelessWidget {
  final String noTelp;
  const BarPaket({Key? key, required this.noTelp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final ListPaket paket = PaketList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPagePaket(
                    noTelp: noTelp,
                    title: paket.nama,
                    harga: paket.harga,
                  ),
                ),
              );
            },
            child: daftarPaket(paket),
          );
        },
        itemCount: PaketList.length,
      ),
    );
  }
}

Widget daftarPaket(ListPaket paket) {
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
                paket.nama,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                paket.harga,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

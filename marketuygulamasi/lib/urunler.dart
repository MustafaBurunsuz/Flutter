import 'package:flutter/material.dart';
import 'package:marketuygulamasi/kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: televizyonKontrolcusu,
          indicatorColor: Colors.blue[300],
          labelColor: Colors.blue[300],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle:  TextStyle(fontSize: 15.0,fontWeight:  FontWeight.w500),
          tabs: [
        Tab(child: Text("Temel gıda ",),),
         Tab(child: Text("Şekerleme"),),
          Tab(child: Text("İçecekler"),),
           Tab(child: Text("Temizlik"),),

          ],
        ),
        Expanded(
      
          child: TabBarView(
               controller: televizyonKontrolcusu,
            children: [
              Kategori(kategori: "Temel gıda"),
               Kategori(kategori: "Şekerleme"),
                Kategori(kategori: "İçecekler"),
                 Kategori(kategori: "Temizlik"),
            ],
          ),
        ),
      ],
    );
  }
}
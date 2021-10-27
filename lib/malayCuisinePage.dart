// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MalayFoods extends StatelessWidget {
  const MalayFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          MalayCuisineDetails(
            image: "NasiLemak.jpg",
            foodname: "Nasi Lemak",
            ingredients: ''' 
Bahan Untuk Nasi
- 3 cawan beras
- 3 hiris halia
- 3 ulas bawang merah - hiris
- 1 cawan santan
- 3 cawan air - boleh tambah jika atau dikurangi bila diperlukan
- 1 helai daun pandan 
- secubit garam
- 1 batang serai - dititik
- 2 helai daun pandan

Bahan Untuk Sambal
- 6 sudu besar chili giling
- 1 biji bawang besar - hiris
- 1 biji bawang tumbuk - hiris
- 3 biji bawang merah
- 2 ulas bawang putih - ditumbuk
- 2 biji bawang besar - ditumbuk
- sedikit air asam jawa
- segenggam ikan bilis ( sebahagian di goreng dan sebahagian di tumbuk)
- sedikit gula, garam, dan perasa
            ''',
          ),
          MalayCuisineDetails(
            image: "NasiKerabu.jpg",
            foodname: "Nasi Kerabu",
            ingredients: '''
Bahan Kuah Tumis :            Bahan Sambal Kelapa :
- 5 sudu besar cili kisar       - 2 biji kelapa
- 2 biji bawang besar            - 5 ekor ikan kembung 
- 5 biji bawang merah           - 2 ulas bawang merah 
- 5 biji bawang putih             - 2 ulas bawang putih
- 1 inci halia                           - 2 batang serai
- 1 batang serai                     - 1 inci halia 
- 2 sudu besar budu             - 1 sudu besar budu
- 1 kotak santan                    - Secubit serbuk lada hitam
- 1 keping asam gelugor        - 1 sudu besar gula
- 2 sudu besar gula melaka    - 1 sudu teh garam
- 1 sudu besar garam
                            
Bahan Ayam Goreng :           Bahan Budu :
10 ketul ayam                        - 1/2 botol budu
2 sudu besar garam              - 5 biji cili padi
2 sudu besar serbuk kunyit
Bahan Ulam-ulaman :           Bahan Nasi :
1/4 biji kubis                           - 5 cawan beras
1 ikat kacang panjang           - 4 1/2 cawan air
200 gm taugeh                       - 30 kuntum bunga telang
1 batang timun jepun             - 1/2 cawan air panas
                                                   - 3 batang serai
Bahan Tambahan :                    - 5 helai daun limau purut
- 1 bungkus keropok ikan        - 2 sudu teh pewarna biru
- 3 biji telur masin 
            ''',
          ),
          MalayCuisineDetails(
            image: "RendangAyam.jpg",
            foodname: "Rendang Ayam",
            ingredients: ''' 
- 1 ekor ayam (saiz besar)
- 1 senduk cili kisar
- 1 mangkuk besar santan pekat
- 1/2 mangkuk kecil ais asam jawa
- 3 sudu besar kerisik
- 2 helai daun kunyit
- 2 helai daun limau purut
- garam dan gula secukup rasa
- 1 mangkuk besar minyak, untuk menumis

Bahan-bahan untuk rempah tumis:
  - 2 batang kayu manis
  - 3 kuntum bunga lawang
  - 5 biji buah pelaga

  Bahan-bahan untuk kisar halus:
    - 1 biji bawang besar     - 2 inci lengkuas
    - 8 biji bawang merah     - 2 batang serai
    - 5 ulas bawang putih     - 3 ketul kunyit hidup
    - 2 inci halia
            ''',
          ),
        ],
      ),
    );
  }
}

class MalayCuisineDetails extends StatelessWidget {
  const MalayCuisineDetails(
      {Key? key,
      required this.image,
      required this.foodname,
      required this.ingredients})
      : super(key: key);

  final String image;
  final String foodname;
  final String ingredients;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Stack(children: [
          Image.asset(
            "assets/" + image,
            height: 280,
            fit: BoxFit.cover,
          ),
        ]),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                foodname,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              alignment: Alignment.topLeft,
              child: const Text(
                "Bahan-Bahan yang diperlukan",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
              alignment: Alignment.topLeft,
              child: Text(
                ingredients,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

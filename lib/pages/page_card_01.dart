import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: const [],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Card(
                    color: Colors.red,
                    child:Text("Test",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),

                    ),
                  ),
                   const SizedBox(height: 5 ),

                   const Card(
                    elevation: 8,
                    child: Padding(
                      //padding
                      padding:  EdgeInsets.all(20.0),
                      //membuat Column  untuk menempatkan text title 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About me",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5,),

                          Text("BALI, KOMPAS.com – Seorang turis asal China meninggal dunia setelah mengalami muntah hebat dan menggigil di sebuah akomodasi murah di kawasan Canggu, Bali.",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                

                      ),
                    ),
                   ),
                   const SizedBox(height: 5),

                   Card(
                    elevation: 8,
                    shadowColor: Colors.red,
                    // contoh memotong gradient melengkung
                    //dan jika tidak di gunakan maka akan menjadi kotak
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // decoration: const BoxDecoration(
                        //   gradient: LinearGradient(
                        //     begin: Alignment.topRight,
                        //     end: Alignment.bottomLeft,
                        //     colors: [Colors.blue,Colors.red],
                        children: [
                          // container di circle avatar + image
                          // text name 
                          // container denga BoxDecoration Circular
                          // dengan text "flutter developer"
                          // Row dengan 3 Row
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 10,
                                  // offset (x,y) positif ke kanan
                                )
                              ],
                              ),
                            //circle bisa kita tabs untuk sort-cut
                            // "circle"
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assetName"),
                            ),
                          ),
                          SizedBox(height: 5,),
                          // text name 
                          Text("Mison",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),)
                          //container dengan boxdecoration circular
                          // dengan text "flutter developer"
                          // Row dengan 3 row
                        ],
                          ),
                    ),
                      ),
                      

                ],
              ),
            ),
          ),
        );
          
  }
}
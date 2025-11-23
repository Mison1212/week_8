import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Card(
                color: Colors.red,
                child: Text("Test", style: TextStyle(fontSize: 16.0)),
              ),
              const SizedBox(height: 5),

              const Card(
                color: Colors.red,
                child: Text(
                  "Card with color",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              // container with color
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.red,
                ),
                child: Text(
                  "Container with color",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: 5),

              Card(
                elevation: 8, //Tinggi bayangan
                color: Colors.yellow,
                child: Text(
                  "Tinggi bayangan shadow",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5),

              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "Tinggi bayangan Shadow",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5),
              // Shape bingkai persegi panjang
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shape bingkai persegi panjang",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ),
              SizedBox(height: 5),

              // card untuk margin
              Card(
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Margin Card", style: TextStyle(fontSize: 10.0)),
                ),
              ),
              SizedBox(height: 5),

              // border tidak menimpa konten
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  side: BorderSide(color: Colors.red, width: 2),
                ),
                borderOnForeground: true, // false
                child: Text(
                  "Border tidak menimpa konten",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
              SizedBox(height: 5),

              // card clip anti alias
              Card(
                clipBehavior: Clip.antiAlias,
                child: Text(
                  "Anti alias clip Card",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              SizedBox(height: 5),

              //Semantic true
              Card(
                semanticContainer: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Semantic true",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ),
              SizedBox(height: 5),

              // shadow color card
              Card(
                shadowColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shadow Color Card",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ),
              SizedBox(height: 5),
              // Customer border Radius Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Custom border Radius Card",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ),
              SizedBox(height: 5),

              //  CARD ABOUT ME
              const Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About me",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "BALI, KOMPAS.com – Seorang turis asal China meninggal dunia setelah mengalami muntah hebat dan menggigil...",
                        style: TextStyle(fontSize: 12.0),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // CARD PROFIL SESUAI GAMBAR
              Card(
                elevation: 10,
                shadowColor: Colors.black54,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.blue],
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // FOTO PROFIL + BORDER
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 4),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assset/images/hacker.png",
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // NAMA
                      const Text(
                        "Mison Wenda",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 6),

                      // BADGE "Flutter Developer"
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "Flutter Developer",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // ROW EXPERIENCE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildExpItem("25 year", "Experience"),
                          _verticalDivider(),
                          _buildExpItem("25 year", "Experience"),
                          _verticalDivider(),
                          _buildExpItem("25 year", "Experience"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                // Card with ListTile
                elevation: 5.0,
                margin: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.install_desktop_rounded,
                        size: 50.0,
                      ),
                      title: Text("Belum ada judul"),
                      subtitle: Text("Lagu daerah setiap daerah"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Card dapat diisi berbagai widget seperti text,'
                        'image, button, dan lainnya.',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              // container card latihan
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D3B66),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // chip Icon
                        const Icon(
                          Icons.credit_card,
                          color: Colors.white70,
                          size: 32,
                        ),
                        // contactless Icon
                        const Icon(
                          Icons.contactless,
                          color: Colors.white54,
                          size: 32,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),

                    // Nomor Card
                    const Text(
                      "1212 1414 1616 2020",
                      style: TextStyle(
                        fontSize: 24,
                        letterSpacing: 3,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // Nama Pemilik
                    const Text(
                      "Mison Wenda",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 25),
                    // logo master card
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Expiry Date
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Expiry Date",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "12/2030",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        // CVV
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "CVV",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "8769",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        // Logo Mastercard
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEB001B),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  width: 32,
                                  height: 32,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFF79E1B),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Mastercard",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // WIDGET ITEM EXPERIENCE
  Widget _buildExpItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.white70),
        ),
      ],
    );
  }

  //GARIS PEMBATAS VERTICAL
  Widget _verticalDivider() {
    return Container(height: 25, width: 1.2, color: Colors.white70);
  }
}

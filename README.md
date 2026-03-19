## Penugasan Minggu ke-2 Pemrograman Perangkat Bergerak E
Ahmad Muqorrobin (5025231254)
----------
Berikut adalah bagian-bagian kode untuk setiap widget yang ada di layar, dari atas ke bawah:
<img width="399" height="839" alt="image" src="https://github.com/user-attachments/assets/3be1c7fe-5cdf-426c-8a21-63e622475b8c" />
1. Widget Gambar Kucing (Line 45)
   ```Container(
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                padding: EdgeInsets.all(20.0),
                color: Colors.lightBlue[100],
                child: Center(
                  child: Image.asset(
                    'assets/catconfused.jpg',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ),
            ),
          ),```
2. Widget Teks Merah (Line 63)
   ```Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.pink[200],
            child: Text('gambar apa itu wok', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16)),
          ),```
3. Widget Icon Kuning (Line 70)
   Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow[200],
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(children: [Icon(Icons.food_bank_rounded), Text("Food", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
                Column(children: [Icon(Icons.landscape_rounded), Text("Scenery", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
                Column(children: [Icon(Icons.people_alt_rounded), Text("People", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
              ],
            ),
          ),
4. Widget Counter (Line 85, Line 110)
   ```CounterCard(),```
   ```return Container(
      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.cyan[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Counter: $_counter", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16)),
          Container(
            color: Colors.cyan[200],
            padding: EdgeInsets.all(5.0),
            child: IconButton(
              onPressed: _incrementCounter,
              icon: Icon(Icons.add, color: Colors.black, size: 16),
            ),
          ),
        ],
      ),
    );```

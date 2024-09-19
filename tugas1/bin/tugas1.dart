import 'package:tugas1/tugas1.dart' as tugas1;

class Produk{
 String namaProduk;
 double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);
  double hitungTotalHargaTanpaDiskon() {
  return harga*jumlah;
  }
  double hitungTotalHargaSetelahDiskon(){
  double TanpaDiskon=hitungTotalHargaTanpaDiskon();
  double DenganDiskon=TanpaDiskon * (diskon/100);
  return  TanpaDiskon-DenganDiskon;
  }
void tampilkanInformasiProduk(){
    print("INFORMASI PRODUK");
    print('Nama Produk : $namaProduk');
    print('Harga produk : Rp.$harga');
    print('Jumlah produk : $jumlah');
    print('Diskon : $diskon%');
    print('================================================================');
    print('Harga Tanpa Diskon : ${hitungTotalHargaTanpaDiskon()}');
    print('Harga setelah Diskon : ${hitungTotalHargaSetelahDiskon()}');
    print('================================================================');
}
}

void main(){
  var produk=Produk('Kamera', 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}


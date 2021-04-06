void main(){

  //Fixed length list
  var urunler = new List(5);
  urunler[0] = "Laptop";
  urunler[1] = "Mause";
  urunler[2] = "Keyboard";
  urunler[3] = "Monitor";
  urunler[4] = "Mic";

  //urunler[5] = "Speaker";

  print(urunler);
  print(urunler[2]);
  //print(urunler[5]);

  //Growable List
  var sehirler = ["Ankara","İstanbul","İzmir"];
  print(sehirler);
  sehirler.add("Bursa");
  print(sehirler);

  print(sehirler.where((s)=>s.contains("a")));

  print(sehirler.first);
}
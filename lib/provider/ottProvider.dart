import 'package:flutter/cupertino.dart';
import 'package:ott_app/modal/ottModal.dart';

class OttProvider extends ChangeNotifier
{
  List<OttModal> infoList = [
  OttModal(
  name: "Netflix",
  image: "assets/images/01.jpg",
  link: "https://www.netflix.com/"),
  OttModal(
  name: "SonyLIV",
  image: "assets/images/02.jpg",
  link: "https://www.sonyliv.com/"),
  OttModal(
  name: "Amazon Prime",
  image: "assets/images/03.jpg",
  link: "https://www.primevideo.com/"),
  OttModal(
  name: "Voot",
  image: "assets/images/04.jpg",
  link: "https://www.voot.com/"),
  OttModal(
  name: "Altbalaji",
  image: "assets/images/05.jpg",
  link: "https://www.altbalaji.com/"),
  OttModal(
  name: "ZEE5",
  image: "assets/images/06.jpg",
  link: "https://www.zee5.com/"),
  OttModal(
  name: "MX Player",
  image: "assets/images/07.jpg",
  link: "https://www.mxplayer.com/"),
  OttModal(
  name: "JioCinema",
  image: "assets/images/08.jpg",
  link: "https://www.jiocinema.com/"),
  OttModal(
  name: "YouTube",
  image: "assets/images/09.jpg",
  link: "https://www.youtube.com/"),
  OttModal(
  name: "Hotstar",
  image: "assets/images/010.jpg",
  link: "https://www.hotstar.com/"),
  OttModal(
  name: "Aha",
  image: "assets/images/011.jpg",
  link: "https://www.aha.com/"),
  OttModal(
  name: "JioSaavn",
  image: "assets/images/012.jpg",
  link: "https://www.jiosaavn.com/"),
  OttModal(
  name: "Crunchyroll",
  image: "assets/images/013.jpg",
  link: "https://www.crunchyroll.com/"),
  OttModal(
  name: "Tata Play Binge",
  image: "assets/images/014.jpg",
  link: "https://www.tataplaybinge.com/"),
  ];

}
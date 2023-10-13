// import 'package:flutter/foundation.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sirat/more.dart';

// import 'details.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    String app = 'Hadith Collection';
    var url1 =
        'https://c4.wallpaperflare.com/wallpaper/83/875/702/islam-muslim-religion-wallpaper-preview.jpg';
    var url2 =
        'https://images.wallpaperscraft.com/image/single/prayer_faith_islam_125313_1600x900.jpg';

    var url3 =
        'https://c4.wallpaperflare.com/wallpaper/200/416/938/islam-muslim-religion-wallpaper-preview.jpg';

    var url4 =
        'https://c4.wallpaperflare.com/wallpaper/167/618/346/islam-muslim-religion-wallpaper-preview.jpg';

    var url5 =
        'https://c4.wallpaperflare.com/wallpaper/156/567/763/dome-of-the-rock-islam-palestine-love-wallpaper-preview.jpg';

    List<MaterialColor> colorizeColors = [
      Colors.red,
      Colors.yellow,
      Colors.purple,
      Colors.blue,
    ];
    const colorizeTextStyle = TextStyle(
      fontSize: 40.0,
      fontFamily: 'SF',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          app,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: ListView(children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(url4),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(url1),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(url2),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(url3),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(url5),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 900),
            viewportFraction: 0.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 46),
          child: Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => More(),
                    ));
              },
              child: Card(
                color: const Color.fromARGB(255, 33, 149, 243),
                child: Container(
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.purple, Colors.blue]),
                  ),
                  child: const ListTile(
                    title: Center(
                        child: Text(
                      "Show File",
                      style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(126, 177, 32, 1),
                      ),
                    )),
                  ),
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: const EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'جو اعمال صالحہ کا وسیلہ ہیں وہی اعمال صالحہ کرنے والے ہیں۔',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            ColorizeAnimatedText(
              'اسلام اچھے اخلاق کا تقاضا کرتا ہے۔',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            ColorizeAnimatedText(
              'نہ دوسروں کو نقصان پہنچانا ہے اور نہ ہی نقصان کا بدلہ نقصان سے۔',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
      ]),
    );
  }
}

// Widget abc() {
//   return const Card(
//       color: Color.fromARGB(255, 43, 71, 5),
//       child: Text('This Is Card'),
//       shape: RoundedRectangleBorder(),
//       elevation: 5,
//       shadowColor: Colors.black12);
// }

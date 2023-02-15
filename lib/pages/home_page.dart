import 'package:codigo6_ui_two/pages/login_page.dart';
import 'package:codigo6_ui_two/widgets/buttom_custom_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image":
          "https://static.tcimg.net/vehicles/primary/f871df3580337f76/2021-Lamborghini-Aventador-white-full_color-driver_side_front_quarter.png",
      "titulo": "Dive Into Self- Driving Cars",
      "description":
          "It is a long established fact that a reader will be distracted by the readable content of a page when",
      "subtitle": "Future",
    },
    {
      "image":
          "https://platform.cstatic-images.com/medium/in/v2/stock_photos/4efea12d-c00d-483d-8435-ce66a9529121/14cb04e0-0150-4b6c-99e2-e333f7b78e4d.png",
      "titulo": "Dive Into Self- Driving Cars",
      "description":
          "It is a long established fact that a reader will be distracted by the readable content of a page when",
      "subtitle": "Future",
    },
    {
      "image":
          "https://maserati.scene7.com/is/image/maserati/maserati/international/Models/default/2023/ghibli/gh_front_MNA.png?\$800x2000\$&fmt=png-alpha&fit=constrain",
      "titulo": "Dive Into Self- Driving Cars",
      "description":
          "It is a long established fact that a reader will be distracted by the readable content of a page when",
      "subtitle": "Future",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"].toString(),
                    titulo: splashData[index]["titulo"].toString(),
                    description: splashData[index]["description"].toString(),
                    subtitle: splashData[index]["subtitle"].toString(),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ButtomCustom(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      text: "GET STARTED",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 30),
      margin: const EdgeInsets.only(right: 5),
      height: currentPage == index ? 10 : 6,
      width: currentPage == index ? 10 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.black : const Color(0xffB3B2BA),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.titulo,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  final String titulo, subtitle, description, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60, left: 30),
          child: Stack(
            children: [
              const SizedBox(
                height: 250,
                width: double.infinity,
              ),
              Positioned(
                // left: -,
                right: -MediaQuery.of(context).size.width * 0.1,
                child: Image.network(
                  image,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xffB3B2BA),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3D4246),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                maxLines: 3,
                description,
                style: const TextStyle(
                  // fontSize: 16,
                  color: Color(0xffB3B2BA),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

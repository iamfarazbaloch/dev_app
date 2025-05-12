import 'package:dev_app/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFA259FF),
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset("assets/images/BG.png", fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: Color(0xFFF6F5F5),

                borderRadius: BorderRadius.vertical(top: Radius.circular(34)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/icons/welcome.png'),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Non-Contact\nDelivery',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF2D0C57),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'When placing an order, select the option\n“Contactless delivery” and the courier will leave\nyour order at the door.',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Spacer(),
                  MyButton(
                    onTap: () {},
                    text: 'Order Now',
                    color: Colors.greenAccent,
                  ),
                  MyButton(
                    onTap: () {},
                    text: 'Dismiss',
                    color: Colors.blueGrey.shade200,
                  ),
                  Gap(30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

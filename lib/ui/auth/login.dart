import 'package:flutter/material.dart';
import 'package:pouchvenue/ui/home/home.dart';

import '../../utils/constants.dart';
import '../../utils/image-icons.dart';
import '../../widget/app_button.dart';
import '../../widget/app_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6F0F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                color: K.primaryColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      ImageIcons.icVenueApp,
                      scale: 5,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text("Sell products and manage your\nvenue with ease.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25
                  ),),
                  const SizedBox(height: 50,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  AppTextField(
                    controller: phone,
                    title: 'Pouch number',
                    keyboardType: TextInputType.text,
                    validate: true,
                  ),
                  const SizedBox(height: 30),
                  AppButton(
                    title: 'Log in',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    color: K.secondaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

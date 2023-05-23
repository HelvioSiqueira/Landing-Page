import 'package:flutter/material.dart';

import 'form.dart';
import 'meu_button.dart';

void main() => runApp(const MyLandingPage());

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({super.key});

  @override
  _MyLandingPage createState() => _MyLandingPage();
}

class _MyLandingPage extends State {
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;

    switch (platform) {
      case TargetPlatform.android:
        return myLandingPageMob();
      case TargetPlatform.windows:
        return myLandingPageWeb();
      case TargetPlatform.fuchsia:
        return myLandingPageMob();
      case TargetPlatform.iOS:
        return myLandingPageMob();
      case TargetPlatform.linux:
        return myLandingPageWeb();
      case TargetPlatform.macOS:
        return myLandingPageWeb();
    }
  }
}

MaterialApp myLandingPageWeb() => MaterialApp(
      title: 'Landing Page',
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset('/images/logo.png', fit: BoxFit.cover),
          title: const Text("Cleocell Eletronicos e Acessórios"),
          backgroundColor: Colors.black87,
          toolbarHeight: 70,
          actions: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: MenuButton("Login")),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: MenuButton("Cadastrar")),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MyForm(),
            ],
          )
        ),
      ),
    );


MaterialApp myLandingPageMob() => MaterialApp();

import 'package:flutter/material.dart';

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
        body: Column(
          children: [],
        ),
      ),
    );

class MenuButton extends StatelessWidget {
  MenuButton(this.textButton, {super.key});

  String textButton;

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.black12))),
          elevation: const MaterialStatePropertyAll(5.0),
          minimumSize: const MaterialStatePropertyAll<Size>(Size(150, 0)),
          backgroundColor: const MaterialStatePropertyAll(Colors.yellowAccent)),
      onPressed: null,
      child: Text(
        textButton,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ));
}

MaterialApp myLandingPageMob() => MaterialApp();

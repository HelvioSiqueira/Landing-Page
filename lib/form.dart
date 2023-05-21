import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  _MyForm createState() => _MyForm();
}

class _MyForm extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _radioValue = 1;

  var _showInputOther = false;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 500),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text("Digite o seu email: ",
                  style: TextStyle(fontSize: 25)),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (String? inValue) {
                  if (inValue != null) {
                    if (inValue.isEmpty) {
                      return "Precisa ter um email válido";
                    }
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: "example@gmail.com", labelText: "Email"),
              ),
              const Text(
                "Qual seu uso geral para seu computador ou notebook?",
                style: TextStyle(fontSize: 25),
              ),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int? inValue) {
                        if (inValue != null) {
                          setState(() {
                            _radioValue = inValue;
                            _showInputOther = false;
                          });
                        }
                      }),
                  const Text("Trabalhos gerais(office, navegador)")
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int? inValue) {
                        if (inValue != null) {
                          setState(() {
                            _radioValue = inValue;
                            _showInputOther = false;
                          });
                        }
                      }),
                  const Text("Jogar")
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: (int? inValue) {
                        if (inValue != null) {
                          setState(() {
                            _radioValue = inValue;
                            _showInputOther = false;
                          });
                        }
                      }),
                  const Text("Edição de videos e fotos")
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 4,
                      groupValue: _radioValue,
                      onChanged: (inValue) {
                        if (inValue != null) {
                          setState(() {
                            _radioValue = inValue;
                            _showInputOther = true;
                          });
                        }
                      }),
                  const Text("Outro:")
                ],
              ),
              Visibility(
                  visible: _showInputOther,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (String? inValue) {
                      if (inValue != null) {
                        if (inValue.isEmpty) {
                          return "Se marcou outro digite algo";
                        }
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(hintText: "", labelText: ""),
                  )),
            ],
          ),
        ),
      );
}

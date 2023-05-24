import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  _MyForm createState() => _MyForm();
}

class _MyForm extends State {
  var marginFormFields = 20.0;
  var marginQuestionFields = 25.0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _radioUseValue = 1;
  var _radioSizeValue = 1;
  var _radioOutHomeValue = 1;
  var _radioKnowledgeValue = 1;

  var _showInputOther = false;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 400),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: Colors.grey,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: marginQuestionFields),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text("Digite o seu email: ",
                          style: TextStyle(fontSize: 25)),
                    ),
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
                          hintText: "example@gmail.com",
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: marginFormFields),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Qual seu uso geral para seu computador ou notebook?",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioUseValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioUseValue = inValue;
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
                            groupValue: _radioUseValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioUseValue = inValue;
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
                            groupValue: _radioUseValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioUseValue = inValue;
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
                            groupValue: _radioUseValue,
                            onChanged: (inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioUseValue = inValue;
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
                                return "Se marcou 'outro' digite algo";
                              }
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "", labelText: ""),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: marginFormFields),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          "Quanto tempo você fica diariamente no computador?(Em horas)",
                          style: TextStyle(fontSize: 25)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (String? inValue) {
                        if (inValue != null) {
                          if (inValue.isEmpty) {
                            return "Digite quantas as horas";
                          }
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder()
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Você lida com tamanho arquivos muito grandes?",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioSizeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioSizeValue = inValue;
                                });
                              }
                            }),
                        const Text("Sim")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _radioSizeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioSizeValue = inValue;
                                });
                              }
                            }),
                        const Text("Não")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: marginFormFields),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          "Você precisa de seu computador fora de casa?",
                          style: TextStyle(fontSize: 25)),
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioOutHomeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioOutHomeValue = inValue;
                                });
                              }
                            }),
                        const Text("Sim")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _radioOutHomeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioOutHomeValue = inValue;
                                });
                              }
                            }),
                        const Text("Não")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: marginFormFields),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          "Qual seu grau de conhecimento em computador?",
                          style: TextStyle(fontSize: 25)),
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _radioKnowledgeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioKnowledgeValue = inValue;
                                });
                              }
                            }),
                        const Text("Leigo")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _radioKnowledgeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioKnowledgeValue = inValue;
                                });
                              }
                            }),
                        const Text("Médio")
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 3,
                            groupValue: _radioKnowledgeValue,
                            onChanged: (int? inValue) {
                              if (inValue != null) {
                                setState(() {
                                  _radioKnowledgeValue = inValue;
                                });
                              }
                            }),
                        const Text("Avançado")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: marginFormFields),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: marginQuestionFields),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Qual a marca do seu notebook ou processador?",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (String? inValue) {
                        if (inValue != null) {
                          if (inValue.isEmpty) {
                            return "Digite a marca do seu computador ou processador";
                          }
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder()
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController raceController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController lifePointController = TextEditingController();
  TextEditingController strengController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "Champions form",
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFF1A1A1A),
            child: Center(
              child: Container(
                width: 400,
                height: 750,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.amber),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Insira o nome do campeão";
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "Nome do campeão...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Insira a raça do campeão";
                          }
                          return null;
                        },
                        controller: raceController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "Raça do campeão...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Insira a classe do campeão";
                          }
                          return null;
                        },
                        controller: classController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "Classe do campeão...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              int.parse(value) > 100 ||
                              int.parse(value) < 1) {
                            return "Insira pontos de vida entre 1 e 100";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: lifePointController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "Pontos de vida...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              int.parse(value) > 5 ||
                              int.parse(value) < 1) {
                            return "A força do campeão deve estar entre 1 e 5";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: strengController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "Forca(1 - 5)...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira uma URL de imagem";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.url,
                        onChanged: (text) {
                          setState(() {});
                        },
                        controller: imageController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(gapPadding: 2),
                          hintText: "https://image.com/43y9fh3hg89.png...",
                          fillColor: Colors.amber,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageController.text,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Image.asset(
                              "assets/images/nophoto.jpg",
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(nameController.text);
                            print(raceController.text);
                            print(classController.text);
                            print(int.parse(lifePointController.text));
                            print(imageController.text);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("O campeão foi salvo")));
                            
                            Navigator.pop(context);
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF0A1428)),
                        ),
                        child: Text(
                          "Salvar",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

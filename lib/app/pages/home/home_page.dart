import 'package:button_rodrigo_desafio/app/pages/home/widgets/button_one.dart';
import 'package:button_rodrigo_desafio/app/pages/home/widgets/button_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void _showSanckbar(String text) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Página de avaliação',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Desafio Rodrido Rahman',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),

              const Text(
                'Avaliado',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),

              const Text(
                '@EmanuelXenos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Exemplo 01 Abaixo',
                style: TextStyle(color: Colors.white),
              ),
              // ___________Exemplo 01_____________
              ButtonOne(
                onpressed: () {
                  _showSanckbar('Será que foi?');
                },
                width: 200,
                height: 60,
                buttonLabel: 'Tap Me',
              ),
              //____________________________________

              const SizedBox(
                height: 40,
              ),
              const Text(
                "Exemplo 02 abaixo",
                style: TextStyle(color: Colors.white),
              ),
              // _________Exemplo 02_______________
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      _showSanckbar(
                          'Nesse segundo exemplo, eu fiz trocando as configurações do ThemeData para toda aplicação');
                    },
                    child: const Text(
                      'Tap Me',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
              ),
              //___________________________________

              const SizedBox(
                height: 40,
              ),
              const Text(
                "Exemplo 03 abaixo",
                style: TextStyle(color: Colors.white),
              ),

              //__________Exemplo 03________________
              ButtonTwo(
                width: 200,
                height: 60,
                onpressed: () {
                  _showSanckbar(
                      'Esse é o terceiro exemplo, onde eu fiz outro widget, para ser utulizado na aplicação');
                },
                buttonLabel: 'Tap Me',
              ),
              //_____________________________________
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Avaliar:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Nota Zero',
                          filled: true,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      label: const Text('Confirmar'),
                      onPressed: () {
                        _showSanckbar('Lascou-se!');
                      },
                      icon: const Icon(
                        Icons.navigate_next_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

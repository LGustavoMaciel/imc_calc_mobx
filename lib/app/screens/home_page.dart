// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:imc_calc/app/controllers/imc_store.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ImcStore imcStore = ImcStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Calculo de IMC',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 120,
                child: Image.asset('assets/images/body.png'),
              ),
              TextField(
                maxLength: 3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Altura (cm)',
                  labelStyle: TextStyle(fontSize: 20),
                ),
                onChanged: (value) => imcStore.setHeight(value),
              ),
              TextField(
                maxLength: 3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Peso (kg)',
                  labelStyle: TextStyle(fontSize: 20),
                ),
                onChanged: (value) => imcStore.setWeight(value),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  imcStore.calcImc();
                  _showResult(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showResult(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: Text(
          'Meu IMC',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        content: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/bmi.png',
              height: 80,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Observer(
                builder: (_) => Text(
                  imcStore.result,
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          )
        ],
      ),
    );
  }
}

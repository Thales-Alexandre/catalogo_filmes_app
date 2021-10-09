import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/core/app_imagem.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget {
  const LoginTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: AppCores.CorPrincipal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImagem.Splash,
                width: MediaQuery.of(context).size.width * .4,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: AppCores.CorFundo),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppCores.CorFundo,
                    ),
                    labelText: "Usuário",
                    labelStyle:
                        TextStyle(color: AppCores.CorFundo, fontSize: 18),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppCores.CorFundo, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.all(0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: AppCores.CorFundo),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_open_outlined,
                      color: AppCores.CorFundo,
                    ),
                    labelText: "Senha",
                    labelStyle:
                        TextStyle(color: AppCores.CorFundo, fontSize: 18),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppCores.CorFundo, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    contentPadding: EdgeInsets.all(0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .5,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade600)),
                  onPressed: () => (Navigator.of(context)
                      .pushReplacementNamed(AppRotas.HOME, arguments: false)),
                  child: Text(
                    'E N T R A R',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

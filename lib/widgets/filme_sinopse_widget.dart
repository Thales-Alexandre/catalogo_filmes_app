import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:flutter/material.dart';

class FilmeSinopseWidget extends StatelessWidget {
  const FilmeSinopseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Sinopse',
            style: AppFontes.textoPadraoNegrito,
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(                  
                  padding: const EdgeInsets.all(8.0),                  
                  child: Text(
                    'G.I. Joe Origens: Snake Eyes é o terceiro e próximo filme de ação da franquia G.I. Joe e acompanha a jornada de um guerreiro solitário treinado por um clã japonês conhecido como os Arashikage. Mas quando segredos do seu passado são relevados, sua lealdade ao clã é testada. Eventualmente, ele embarca em uma jornada que o transforma no herói Snake Eyes.',
                    style: AppFontes.textoPadrao,                    
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

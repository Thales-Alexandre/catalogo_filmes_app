import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/provider/genero.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeneroWidget extends StatefulWidget {
  GeneroWidget({Key? key}) : super(key: key);

  @override
  State<GeneroWidget> createState() => _GeneroWidgetState();
}

class _GeneroWidgetState extends State<GeneroWidget> {  
  late Genero genero;
  bool emExecucao = false;

  @override
  void dispose() {
    genero.limpaListaGenero();
    super.dispose();
  }
  
  _carregaListaUnica(BuildContext context){
    if (!emExecucao){
      Provider.of<Genero>(context).setGenero();
      genero = Provider.of<Genero>(context, listen: false);    
      emExecucao = true;
    }  
  }

  @override
  Widget build(BuildContext context) { 
    _carregaListaUnica(context);               
    List _generos = genero.getGenero;
        
    return Container(
      decoration: BoxDecoration(
        color: AppCores.CorFundo,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.amber,
            offset: Offset(2.0, 4.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 1,
        children: _generos
            .map(
              (e) => Card(                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: Center(
                  child: Text(
                    e.nome,
                    style: AppFontes.textoPadraoNegrito,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

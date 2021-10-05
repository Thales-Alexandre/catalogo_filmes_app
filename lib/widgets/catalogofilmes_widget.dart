import 'package:flutter/material.dart';
import '../core/core.dart';

class CatalogoFilmesWidget extends StatefulWidget {
  const CatalogoFilmesWidget({Key? key}) : super(key: key);

  @override
  State<CatalogoFilmesWidget> createState() => _CatalogoFilmesWidgetState();
}

class _CatalogoFilmesWidgetState extends State<CatalogoFilmesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppCores.CorPrincipal,
          title: Center(
            child: Text(
              'Filmes',
              style: AppFontes.textoPadraoNegrito,
            ),
          ),
        ),
        body: Card(                    
          elevation: 4,
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  'https://m.media-amazon.com/images/I/4191V0QIFmL._AC_.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,                  
                ),                  
              ),
              ListTile(
                title: Text(
                  'John Wick',
                  style: AppFontes.textoPadraoNegrito,
                ),
                subtitle: Text(
                  'Ação',
                  style: AppFontes.textoPadrao,
                ),
                trailing: const Icon(Icons.star),
              )
            ],
          ),
        ));
  }
}

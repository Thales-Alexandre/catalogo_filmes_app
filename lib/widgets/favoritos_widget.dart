import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/core/app_url.dart';
import 'package:catalogo_filmes_app/provider/filmes.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritosWidget extends StatefulWidget {
  const FavoritosWidget({Key? key}) : super(key: key);

  @override
  State<FavoritosWidget> createState() => _FavoritosWidgetState();
}

class _FavoritosWidgetState extends State<FavoritosWidget> {
  late Filmes filmesFavoritos;

  bool emExecucao = false;

  @override
  void dispose() {
    filmesFavoritos.limpaListaFilmesFavoritos();
    super.dispose();
  }

  _carregaListaUnica(BuildContext context) {
    if (!emExecucao) {      
      Provider.of<Filmes>(context).setFilmesFavoritos();
      filmesFavoritos = Provider.of<Filmes>(context, listen: false);
      emExecucao = true;
    }
  }

  Widget build(BuildContext context) {
    _carregaListaUnica(context);
    List _filmesFavoritos = filmesFavoritos.getFilmesFavoritos;

    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: _filmesFavoritos
            .map(
              (e) => InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AppRotas.FILME_FORM, arguments: e);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      (AppUrl.urlImagem + e.banner),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
            .toList(),        
      ),
    );
  }
}

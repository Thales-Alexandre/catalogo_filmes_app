import 'package:catalogo_filmes_app/core/app_url.dart';
import 'package:catalogo_filmes_app/provider/filmes.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/core.dart';

class CatalogoFilmesWidget extends StatefulWidget {
  const CatalogoFilmesWidget({Key? key}) : super(key: key);

  @override
  State<CatalogoFilmesWidget> createState() => _CatalogoFilmesWidgetState();
}

class _CatalogoFilmesWidgetState extends State<CatalogoFilmesWidget> {
  late Filmes filmes;
  bool emExecucao = false;

  @override
  void dispose() {
    filmes.limpaListaFilmes();
    super.dispose();
  }

  _carregaListaUnica(BuildContext context) {
    if (!emExecucao) {      
      Provider.of<Filmes>(context).setFilmes();
      filmes = Provider.of<Filmes>(context, listen: false);
      emExecucao = true;
    }
  }

  Widget build(BuildContext context) {
    _carregaListaUnica(context);
    List _filmes = filmes.getFilmes;    

    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: _filmes
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

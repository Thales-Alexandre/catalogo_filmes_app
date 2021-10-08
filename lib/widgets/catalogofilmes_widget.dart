import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
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
    const String bannerFilme =
        'https://m.media-amazon.com/images/I/4191V0QIFmL._AC_.jpg';

    return Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(AppRotas.FILME_FORM, arguments: false);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    bannerFilme,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(AppRotas.FILME_FORM, arguments: false);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    bannerFilme,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
 
  }
}

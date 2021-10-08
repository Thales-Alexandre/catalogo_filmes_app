import 'package:catalogo_filmes_app/core/app_cores.dart';
import 'package:catalogo_filmes_app/core/app_fontes.dart';
import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:catalogo_filmes_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class FavoritosWidget extends StatelessWidget {
  const FavoritosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String bannerFilme =
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/k36UzsRQaY6E055cdYPdYbyREer.jpg';

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

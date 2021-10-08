import 'package:catalogo_filmes_app/utils/app_rotas.dart';
import 'package:flutter/material.dart';
import '../core/core.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppCores.CorFundo,
        child: Column(
          children: [
            AppBar(
              backgroundColor: AppCores.CorPrincipal,
              title: Center(
                child: Text(
                  'Menu',
                ),
              ),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppRotas.HOME, arguments: false);
              },
              title: Text(
                'Inicio',
                style: AppFontes.textoPadrao,
              ),
              leading: Icon(
                Icons.home_outlined,
                size: 30,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppRotas.GENERO, arguments: false);
              },
              title: Text(
                'Genero',
                style: AppFontes.textoPadrao,
              ),
              leading: Icon(
                Icons.category_outlined,
                size: 30,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppRotas.FAVORITOS, arguments: false);
              },
              title: Text(
                'Favoritos',
                style: AppFontes.textoPadrao,
              ),
              leading: Icon(
                Icons.favorite_border_rounded,
                size: 30,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}

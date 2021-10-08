import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key, required this.conteudo}) : super(key: key);
  
  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF212121),
            Color(0xFF9E9E9E),
          ],
          stops: [
            0.0,
            0.7,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),      
      child: conteudo,
    );
  }
}

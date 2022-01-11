import 'package:flutter/material.dart';
import 'package:komatsu_clean/features/presentation/widgets/login/detalle_solicitud_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String algo = 'test';
    return Scaffold(
      body: Container(
        child: Column(
          children: [DetalleSolicitud(algo: algo)],
        ),
      ),
    );
  }
}

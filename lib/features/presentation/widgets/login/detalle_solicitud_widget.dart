import 'package:flutter/material.dart';

class DetalleSolicitud extends StatelessWidget {
  const DetalleSolicitud({
    Key? key,
    required this.algo,
  }) : super(key: key);

  final String algo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [Text(algo)],
          ),
          Row(
            children: const [Text('data')],
          )
        ],
      ),
    );
  }
}

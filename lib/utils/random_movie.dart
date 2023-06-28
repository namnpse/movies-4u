import 'dart:math';

randomMovie({required double minPoint, required double maxPoint}) =>
    (minPoint + Random().nextDouble() * (maxPoint - minPoint))
        .toStringAsFixed(1)
        .toString();

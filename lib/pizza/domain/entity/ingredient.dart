import 'package:flutter/material.dart';
import 'package:montepizza/constants/image_contante.dart';

class Ingredient {
  const Ingredient(this.image,this.positions);
  final String image;
  final List<Offset> positions;

  bool compare(Ingredient ingredient) => ingredient.image == image;
}

const ingredients = <Ingredient>[
  Ingredient(ImagensConstantes.CHILI_IMAGE,
  <Offset>[
    Offset(0.2, 0.2),
    Offset(0.6, 0.2),
    Offset(0.4, 0.25),
    Offset(0.5, 0.3),
    Offset(0.4, 0.65),
  ]),
  Ingredient(ImagensConstantes.GARLIC_IMAGE,
   <Offset>[
    Offset(0.3, 0.3),
    Offset(0.7, 0.3),
    Offset(0.5, 0.26),
    Offset(0.6, 0.4),
    Offset(0.5, 0.67),
  ]),
  Ingredient(ImagensConstantes.OLIVE_IMAGE,
   <Offset>[
    Offset(0.4, 0.4),
    Offset(0.5, 0.4),
    Offset(0.6, 0.28),
    Offset(0.2, 0.6),
    Offset(0.1, 0.60),
  ]),
  Ingredient(ImagensConstantes.ONION_IMAGE,
   <Offset>[
    Offset(0.3, 0.3),
    Offset(0.7, 0.3),
    Offset(0.2, 0.16),
    Offset(0.2, 0.6),
    Offset(0.6, 0.67),
  ]),
  Ingredient(ImagensConstantes.PEA_IMAGE,
   <Offset>[
    Offset(0.3, 0.5),
    Offset(0.8, 0.5),
    Offset(0.6, 0.30),
    Offset(0.4, 0.4),
    Offset(0.1, 0.55),
  ]),
  Ingredient(ImagensConstantes.PICKLE_IMAGE,
   <Offset>[
    Offset(0.8, 0.5),
    Offset(0.5, 0.5),
    Offset(0.3, 0.25),
    Offset(0.4, 0.4),
    Offset(0.2, 0.50),
  ]),
  Ingredient(ImagensConstantes.POTATO_IMAGE,
   <Offset>[
    Offset(0.2, 0.2),
    Offset(0.6, 0.4),
    Offset(0.4, 0.25),
    Offset(0.3, 0.3),
    Offset(0.4, 0.55),
  ]),

  Ingredient(ImagensConstantes.BARATA_IMAGE,
   <Offset>[
    Offset(0.3, 0.3),
    Offset(0.7, 0.3),
    Offset(0.2, 0.16),
    Offset(0.2, 0.6),
    Offset(0.6, 0.67),
  ]),

   Ingredient(ImagensConstantes.PREGO_IMAGE,
   <Offset>[
    Offset(0.4, 0.3),
    Offset(0.7, 0.3),
    Offset(0.5, 0.26),
    Offset(0.6, 0.4),
    Offset(0.5, 0.67),
  ]),

];

import 'package:flutter/foundation.dart';

class Mobile {
  final String name;
  final String imageUrl;
  final double rating;
  final String reviews;
  final String currentPrice;
  final String originalPrice;
  final int discount;
  final List<String> features;
  bool isLiked;
  bool inCart;

  Mobile({
    @required this.name,
    @required this.imageUrl,
    @required this.rating,
    @required this.reviews,
    @required this.currentPrice,
    this.originalPrice,
    this.discount,
    this.features,
    this.isLiked = false,
    this.inCart = false,
  });
}

List<Mobile> mobiles = [
  Mobile(
    name: 'Redmi 8 (Red, 64 GB)',
    imageUrl: 'assets/images/redmi-8-ruby-red.png',
    rating: 4.4,
    reviews: '4,59,602',
    currentPrice: '8,199',
    originalPrice: '10,999',
    discount: 25,
    features: [
      '4GB RAM | 64 GB Storage',
      '15.8 cm (6.22 inch) HD+ Display',
      '5000 mAh',
      '12MP + 2MP',
      '8MP Front Camera',
    ],
  ),
  Mobile(
      name: 'Realme 5i (Green, 64GB)',
      imageUrl: 'assets/images/Realme-5i-Forest-Green.jpg',
      rating: 4.4,
      discount: 16,
      reviews: '1,36,312',
      currentPrice: '9,999',
      originalPrice: '11,999',
      features: [
        '4GB RAM | 128 GB Storage',
        '16.56 cm (6.52 inch) HD+ Display',
        '5000 mAh',
        '12MP + 8MP + 2MP + 2MP',
        '8MP Front Camera',
      ],
      isLiked: true),
  Mobile(
    name: 'Redmi 5A (Black, 32GB)',
    imageUrl: 'assets/images/Redmi-8-Onyx-Black.jpg',
    rating: 4.4,
    discount: 12,
    reviews: '1,28,830',
    currentPrice: '6,999',
    originalPrice: '7,999',
    features: [
      '3GB RAM | 32 GB Storage',
      '16.56 cm (6.52 inch) HD+ Display',
      '5000 mAh',
      '12MP + 2MP',
      '5MP Front Camera',
    ],
  ),
  Mobile(
    name: 'Realme 6 (Blue, 64GB)',
    imageUrl: 'assets/images/Realme-6-Comet-Blue.jpg',
    rating: 4.4,
    discount: 13,
    reviews: '1,14,051',
    currentPrice: '12,999',
    originalPrice: '13,999',
    features: [
      '4GB RAM | 64 GB Storage',
      '16.51 cm (6.5 inch) HD+ Display',
      '4300 mAh',
      '64MP + 8MP + 2MP + 2MP',
      '16MP Front Camera',
    ],
    isLiked: true,
  ),
  Mobile(
    name: 'Redmi 8 (Black, 64 GB)',
    imageUrl: 'assets/images/Redmi-8-Onyx-Black.jpg',
    rating: 4.4,
    discount: 25,
    reviews: '4,59,602',
    currentPrice: '8,199',
    originalPrice: '10,999',
    features: [
      '4GB RAM | 64 GB Storage',
      '15.8 cm (6.22 inch) HD+ Display',
      '5000 mAh',
      '12MP + 2MP',
      '8MP Front Camera',
    ],
    isLiked: true,
  ),
];

List<Mobile> favorites = [];
List<Mobile> cart = [];
List<Mobile> orders = [];

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class OrderDetailsPage extends StatelessWidget {
//   // const OrderDetailsPage({super.key});

//     final String image;
//     final String title;

//     const OrderDetailsPage({
//       super.key,
//       required this.image,
//       required this.title,
//     });


//   @override
//   Widget build(BuildContext context) {
//     // Parametreleri almak için RouteData kullanın
//     final params = GoRoute.of(context).queryParameters;
    
//     // param1 ve param2 değerlerini alın
//     final param1 = params['param1'];
//     final param2 = params['param2'];

//     // İşlemlerinize devam edin...
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Details Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Parameter 1: $param1'),
//             Text('Parameter 2: $param2'),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:belanja/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;  // Terima objek Item melalui konstruktor

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: item.name,
            child: Image.network(
              item.imageUrl,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Navigasi ke ExtractArgumentsScreen dan mengirim argumen Item
      //       Navigator.pushNamed(
      //         context,
      //         ExtractArgumentsScreen.routeName,
      //         arguments: Item(
      //           name: 'Item Title',
      //           price: 2000,
      //           imageUrl: 'https://example.com/image.png', // Ganti dengan URL gambar yang valid
      //           stock: 10,
      //           rating: 4.5,
      //         ),
      //       );
      //     },
      //     child: const Text('Navigate to screen with Item data'),
      //   ),
      // ),
//     );
//   }
// }

// class ExtractArgumentsScreen extends StatelessWidget {
//   const ExtractArgumentsScreen({Key? key}) : super(key: key);

//   static const routeName = '/extractArguments';

//   @override
//   Widget build(BuildContext context) {
//     // Mengambil argumen dari ModalRoute
//     final args = ModalRoute.of(context)!.settings.arguments as Item;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.name),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network(
//               args.imageUrl,
//               height: 200,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Price: \$${args.price}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Stock: ${args.stock}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Rating: ${args.rating.toStringAsFixed(1)} ★',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

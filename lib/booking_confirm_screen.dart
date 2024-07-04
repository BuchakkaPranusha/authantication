import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';



class BookingConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Barcode Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white
                    ),

                  ),
                  const Positioned(
                    left: 10,
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 40,
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    right: 10,
                    top: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 40,
                    ),
                  )
                ],
              ),
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Hello Flutter',
                width: 200,
                height: 100,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class FunnyContainer extends StatelessWidget {
//   const FunnyContainer({Key? key}) : super(key: key);
//
//   Widget _childContainer() {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(
//             color: Colors.yellow,
//             width: 4,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(20)),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
//         child: Container(
//           height: 400,
//           decoration: const BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//           ),
//           child: Stack(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const SizedBox(height: 40),
//                   Expanded(child: _childContainer()),
//                   Expanded(child: _childContainer()),
//                   Expanded(child: _childContainer()),
//                 ],
//               ),
//               const Positioned(
//                 left: 0,
//                 right: 0,
//                 top: -50,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   radius: 40,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
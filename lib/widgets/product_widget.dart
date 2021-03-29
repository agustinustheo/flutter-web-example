import 'dart:developer';
import 'dart:ui';

import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'container_widget.dart';
import 'label_widget.dart';
import 'button_widget.dart';

// Widget productCard({String productTitle, String imageUrl, String productPrice, String productLabel, String textInput}){
//   return CardContainer(
//     child: Column(
//       children:[
//         AspectRatio(
//           aspectRatio: 1/1,
//           child: Image.network(imageUrl)
//         ),
//         subtitle(productTitle),
//         Wrap(
//           direction: Axis.horizontal,
//           crossAxisAlignment: WrapCrossAlignment.center,
//           spacing: 60.0,
//           children:[
//             normalText(productPrice),
//             Label(text: productLabel),
            
//           ] 
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 30.0,
//               child: circularButton((){}, text: '-', inverseColor: true)
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 20.0, right: 20.0),
//               width: 100.0,
//               height: 30.0,
//               child: TextField(
//                 inputFormatters:<TextInputFormatter> [
//                   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                 ],
//                 decoration: new InputDecoration(
//                   border: new OutlineInputBorder(
//                     borderRadius: new BorderRadius.circular(10.0),
//                   )
//                 )
//               ),
//             ),
//             Container(
//               width: 30.0,
//               child: circularButton((){}, text: '+'),
//             ),
//           ],
//         )
//       ]
//     ),
//     boxConstraints: BoxConstraints(maxWidth: 300)
//   );
// }


// class ProductCard extends StatelessWidget{
//  final String productTitle;
//  final String imageUrl;
//  final String productPrice;
//  final String productLabel;
//  final String textInput;

//   ProductCard({
//     this.productTitle,
//     this.imageUrl,
//     this.productPrice,
//     this.productLabel,
//     this.textInput,
//   });

//   @override
//   Widget build(BuildContext context){
//     return CardContainer(
//       child: Column(
//         children:[
//           AspectRatio(
//             aspectRatio: 1/1,
//             child: Image.network(imageUrl)
//           ),
//           Subtitle(text: productTitle),
//           Wrap(
//             direction: Axis.horizontal,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             spacing: 60.0,
//             children:[
//               NormalText(text: productPrice),
//               Label(text: productLabel),
              
//             ] 
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 30.0,
//                 child: circularButton((){}, text: '-', inverseColor: true)
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                 width: 100.0,
//                 height: 30.0,
//                 child: TextField(
//                   inputFormatters:<TextInputFormatter> [
//                     FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                   ],
//                   decoration: new InputDecoration(
//                     border: new OutlineInputBorder(
//                       borderRadius: new BorderRadius.circular(10.0),
//                     )
//                   )
//                 ),
//               ),
//               Container(
//                 width: 30.0,
//                 child: circularButton((){}, text: '+'),
//               ),
//             ],
//           )
//         ]
//       ),
//       boxConstraints: BoxConstraints(maxWidth: 300)
//     );
//   }
// }

class ProductCard extends StatefulWidget {
  final String productTitle;
  final String imageUrl;
  final String productPrice;
  final String productLabel;
  final String textInput;

  ProductCard({
    this.productTitle,
    this.imageUrl,
    this.productPrice,
    this.productLabel,
    this.textInput,
  });

  @override
  _ProductCard createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard>{

  int ctr = 0;
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context){
      return CardContainer(
        child: Column(
          children:[
            AspectRatio(
              aspectRatio: 1/1,
              child: Image.network(widget.imageUrl)
            ),
            Subtitle(text: widget.productTitle),
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 60.0,
              children:[
                NormalText(text: widget.productPrice),
                Label(text: widget.productLabel),
                
              ] 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 30.0,
                  child: CircularButton(function: (){
                    // if(int.parse(ctr.toString()) > 0){
                      
                    // }

                    setState(() {
                        ctr--;
                        _controller.text = ctr.toString();
                      });
                    
                  }, text: '-', 
                  // inverseColor: true
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: 100.0,
                  height: 30.0,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    controller: _controller,
                    onChanged: (text){                    
                      setState(() {
                        ctr = int.parse(text);
                      });
                    },
                  )
                ),
                Container(
                  width: 30.0,
                  child: CircularButton(function: (){
                    setState(() {
                      ctr++;
                      _controller.text = ctr.toString();
                    });
                  }, text: '+'),
                ),
              ],
            )
          ]
        ),
        boxConstraints: BoxConstraints(maxWidth: 300)
      );
  }
}


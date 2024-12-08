import 'package:facebook_userinterface/models/marketplace_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class MarketPage extends StatefulWidget{
   MarketPage({Key? key}) : super(key: key);

   @override
   _MarketPageState createState() => _MarketPageState();
 }

class _MarketPageState extends State<MarketPage> {
   @override
  Widget build(BuildContext context)  {
     return Column(
       children: [
         Container(
           margin: EdgeInsets.symmetric(
               horizontal: 20,
               vertical: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('market page',
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                 ),
               ),

               Container(
                 child: IconButton(
                   icon: Icon(Icons.search_outlined),
                   splashColor: Colors.transparent,
                   highlightColor: Colors.transparent,
                   onPressed: () {
                     print('search clicked');
                   },
                 ),

                 decoration: BoxDecoration(
                   shape: BoxShape.circle,color: Colors.grey[300]
                 ),
               ),
             ],
           ),
         ),
         Divider(
           thickness: 1,
           color: Colors.black38,
         ),

         Expanded(
             child: GridView.count(
               primary: false,
                 padding: const EdgeInsets.all(20),
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 crossAxisCount: 2,
               childAspectRatio: (2/3),
               children: [
                 for (int i =0; i < marketplaceData.length; i++)...[
                   InkWell(
                     child: Card(
                       child: Column(
                         children: [
                           Expanded(
                               child: Image(
                                 image: AssetImage(marketplaceData[i].photo),
                               ),
                           ),

                           Text(
                             marketplaceData[i].title,
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 18),
                           ),

                           Text(
                             marketplaceData[i].photo.toString(),
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 14),
                           )
                         ],
                       ),
                     ),

                     onTap: () => {
                       print('bike 2 month old clicked')
                     },
                   )
                 ]
               ],
             ),
         )
       ],
     );
   }
}
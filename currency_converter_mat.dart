import 'package:flutter/material.dart';

//StateFul Widget
class CurrencyConverterMat extends StatefulWidget{
  const CurrencyConverterMat({super.key});//constructor superkey used cuz widget immutable
  @override
  State<CurrencyConverterMat> createState() => _CurrencyConverterMatState();
}

//State
class _CurrencyConverterMatState extends State<CurrencyConverterMat>{
  //constructor superkey not used cuz state mutable
  //like init state:
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

@override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor:Color.fromRGBO(173, 213, 237, 1),

   //APP BAR

    appBar: AppBar(
     backgroundColor:Color.fromRGBO(173, 213, 237, 1),
      elevation: 0.0,
      title:Center(
        child: Text("CURRENCY CONVERTER", 
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,

      ),
      ),
      ),
    ),

    //COLUMN

        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [

            //TEXT

            Text(result.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1),
              )
              ),
          
            
            //TEXT FIELD

            Container(
              margin: EdgeInsetsGeometry.fromLTRB(300, 30, 300, 30), 
               child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 1, 16),
                ),

                decoration:InputDecoration(
                  hint: Text("Enter amount to be converted",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w100,
                    ),
                  ),
               
                prefixIcon: Icon(Icons.currency_exchange),
                prefixIconColor: Colors.black87,
               
                filled: true,
                fillColor: const Color.fromARGB(255, 212, 160, 160),
               
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(70)),
                 ),
               
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color : Colors.black87,
                  width: 4,),
                  borderRadius:BorderRadius.  all(Radius.circular(70)),
                 ),
                           ),
               keyboardType: TextInputType.numberWithOptions(
                decimal: true,
                signed: false,
               ),
                           ),
             ),

             //BUTTON

            Padding(
              padding: const EdgeInsets.only(left: 400, right: 400),
              //for textButton: TextBotton, for elevated button: ElevatedButton
              child: ElevatedButton(
                onPressed: () {
                setState(() {
                   result = double.parse(textEditingController.text)*81;
                });
                },
              style: ButtonStyle(
                backgroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 85, 110, 130),),
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50),
                ),
                ),
              child: Text("Convert",
              style: TextStyle( 
                color: Colors.black,
                fontSize: 20,
                ), 
                ),
              ),
            ),

           ],

        )
        ),
      );
 }
}

//StateLess Widget
/*
class CurrencyConverterMatt extends StatelessWidget{
 const CurrencyConverterMatt ({super.key}); //constructor superkey used cuz widget immutable
  
 @override
 Widget build(BuildContext context){

 double result =0;
 final TextEditingController textEditingController = TextEditingController();
 
  return Scaffold(
    backgroundColor:Color.fromRGBO(57, 129, 171, 1),

   //APP BAR

    appBar: AppBar(
      backgroundColor:Color.fromRGBO(57, 129, 171, 1),
      elevation: 0.0,
      title:Center(
        child: Text("CURRENCY CONVERTER", 
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,

      ),
      ),
      ),
    ),

    //COLUMN

        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [

            //TEXT

            Text(result.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1),
              )
              ),
          
            
            //TEXT FIELD

            Container(
              margin: EdgeInsetsGeometry.fromLTRB(300, 30, 300, 30), 
               child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 1, 16),
                ),

                decoration:InputDecoration(
                  hint: Text("Enter amount to be converted",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w100,
                    ),
                  ),
               
                prefixIcon: Icon(Icons.currency_exchange),
                prefixIconColor: Colors.black87,
               
                filled: true,
                fillColor: const Color.fromARGB(255, 212, 160, 160),
               
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(70)),
                 ),
               
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color : Colors.black87,
                  width: 4,),
                  borderRadius:BorderRadius.  all(Radius.circular(70)),
                 ),
                           ),
               
               keyboardType: TextInputType.numberWithOptions(
                decimal: true,
                signed: false,
               ),
                           ),
             ),

             //BUTTON

            Padding(
              padding: const EdgeInsets.only(left: 400, right: 400),
              //for textButton: TextBotton, for elevated button: ElevatedButton
              child: ElevatedButton(
                onPressed: () {
                result = double.parse(textEditingController.text)*81;
                },
              style: ButtonStyle(
                backgroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 85, 110, 130),),
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50),
                ),
                ),
              child: Text("Convert",
              style: TextStyle( 
                color: Colors.black), 
                ),
              ),
            ),

           ],

        )
        ),
      );
   }
 }
 */
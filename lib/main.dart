import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main () { 
  runApp( const MaterialApp(  
    home: CBInputNumber (),
  ));
}

class CBInputNumber extends StatefulWidget {
  const CBInputNumber({ Key? key }) : super(key: key);

  @override
  _CBInputNumberState createState() => _CBInputNumberState();
}

class _CBInputNumberState extends State<CBInputNumber> {
  TextEditingController numcontroller = TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
  MaskedTextController   mask = MaskedTextController( mask: '000.000,00' ); 
    return Scaffold(
    body :Column(
      key: formKey,
    children: [  
     
    TextFormField(
    decoration: const  InputDecoration( 
    labelText: 'Numero',
    hintText: "000.000,00",
    ),   
    textAlign: TextAlign.left,
    textDirection: TextDirection.rtl,
    keyboardType: TextInputType.number,
     controller : mask,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Dígite um número válido';
      }
      return null;
    },
    ),
    ElevatedButton(child: null,
    onPressed: (){
      if(formKey.currentState!.validate()) {
        print('valor salvo');
      }
      
    },)
    ],
  ), 
   
    
    
    ); 
  
  }
}
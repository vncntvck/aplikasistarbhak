import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart'; 
 
class postadd extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: ListView( 
        children: [ 
          SingleChildScrollView( 
            child: Padding( 
              padding: EdgeInsets.symmetric(horizontal: 10), 
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [  
                  Padding( 
                    padding: EdgeInsets.only( 
                      top: 20, 
                      left: 10, 
                      bottom: 10, 
                    ), 
                    child: Text( 
                      "List Order Anda", 
                      style: 
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold), 
                    ), 
                  ), 
                  InputDataBarang(), // Memanggil widget InputDataBarang di sini. 
                ], 
              ), 
            ), 
          ), 
        ], 
      ), 
    ); 
  } 
} 
 
class InputDataBarang extends StatefulWidget { 
  @override 
  _InputDataBarangState createState() => _InputDataBarangState(); 
} 
 
class _InputDataBarangState extends State<InputDataBarang> { 
  final _formKey = GlobalKey<FormState>(); 
  String _selectedCategory = 'Makanan'; 
  TextEditingController _namaProdukController = TextEditingController(); 
  TextEditingController _hargaController = TextEditingController(); 
 
  @override 
  Widget build(BuildContext context) { 
    return Padding( 
      padding: EdgeInsets.all(16.0), 
      child: Column( 
        children: <Widget>[ 
          TextFormField( 
            controller: _namaProdukController, 
            decoration: InputDecoration( 
              labelText: 'Nama Produk', 
            ), 
            validator: (value) { 
              if (value!.isEmpty) { 
                return 'Please enter some text'; 
              } 
              return null; 
            }, 
          ), 
          TextFormField( 
            controller: _hargaController, 
            decoration: InputDecoration( 
              labelText: 'Harga', 
            ), 
            validator: (value) { 
              if (value!.isEmpty) { 
                return 'Please enter some text'; 
              } 
              return null; 
            }, 
          ), 
          DropdownButtonFormField( 
            value: _selectedCategory, 
            onChanged: (newValue) { 
              setState(() { 
                _selectedCategory = newValue.toString(); 
              }); 
            }, 
            items: <String>['Makanan', 'Minuman', 'Lain-lain'] 
                .map<DropdownMenuItem<String>>((String value) { 
              return DropdownMenuItem<String>( 
                value: value, 
                child: Text(value), 
              ); 
            }).toList(), 
          ), 
          ElevatedButton( 
            onPressed: () { 
              if (_formKey.currentState!.validate()) { 
                _saveData(); 
              } 
            }, 
            child: Text('Submit'), 
          ), 
        ], 
      ), 
    ); 
  } 
 
  void _saveData() { 
    String namaProduk = _namaProdukController.text; 
    String harga = _hargaController.text; 
 
    ScaffoldMessenger.of(context).showSnackBar( 
      SnackBar( 
          content: Text('Data saved: $namaProduk, $harga, $_selectedCategory')), 
    ); 
 
    _namaProdukController.clear(); 
    _hargaController.clear(); 
    setState(() { 
      _selectedCategory = 'Makanan'; 
    }); 

  } 
}

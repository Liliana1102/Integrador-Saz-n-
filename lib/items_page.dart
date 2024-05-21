import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('                     SAZZON  🧂🥗'),
        backgroundColor: Color(0xFFBADF70), // Fondo del AppBar
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Ingrediente',
                      fillColor: Color.fromARGB(255, 250, 255, 200), // Color del campo de texto
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: quantityController,
                    decoration: InputDecoration(
                      labelText: 'Cantidad',
                      fillColor: Color.fromARGB(255, 250, 255, 200), // Color del campo de texto
                      filled: true,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Color(0xFFDF8F70)), // Color del ícono
                  onPressed: () {
                    // Funcionalidad eliminada
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 0, // Sin items
              itemBuilder: (context, index) {
                // Funcionalidad eliminada
                return ListTile(
                  title: Text('Nombre del Ingrediente'),
                  subtitle: Text('Cantidad: 0'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Color(0xFFDF8F70)),
                        onPressed: () {
                          nameController.text = 'Nombre del Ingrediente';
                          quantityController.text = '0';
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Editar'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      labelText: 'Item Name',
                                      filled: true,
                                    ),
                                  ),
                                  TextField(
                                    controller: quantityController,
                                    decoration: InputDecoration(
                                      labelText: 'Quantity',
                                      filled: true,
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Funcionalidad eliminada
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Guardar'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancelar'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Color(0xFFDF8F70)),
                        onPressed: () {
                          // Funcionalidad eliminada
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

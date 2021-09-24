import 'package:flutter/material.dart';
import 'package:tugas_prak1/model/item_contact.dart';

class widgetItem extends StatelessWidget {
  final Contact contacts;
  widgetItem(this.contacts);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.amber[100],
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(
                                contacts.image,
                              ),
                              fit: BoxFit.contain)),
                          
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contacts.nama,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(contacts.email),
                                Text(contacts.nohp),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




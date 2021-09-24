import 'package:flutter/material.dart';
import 'package:tugas_prak1/model/item_contact.dart';
import 'package:tugas_prak1/widget/widget_contact.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late List<Contact> contacts;
  @override
  void initState() {
    contacts = Contact.getContact();
    contacts.sort((a, b) => a.nama.compareTo(b.nama));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (var i = 0; i < contacts.length; i++)
              InkWell(
                onTap: () {},
                child: widgetItem(Contact(
                    id: contacts[i].id,
                    nama: contacts[i].nama,
                    email: contacts[i].email,
                    nohp: contacts[i].nohp,
                    image: contacts[i].image)),
              ),
          ],
        ),
      ),
    );
  }
}
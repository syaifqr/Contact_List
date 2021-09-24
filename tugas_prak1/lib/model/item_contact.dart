class Contact {
  final int id;
  final String nama;
  final String email;
  final String nohp;
  final String image;

Contact({
  required this.id,
  required this.nama,
  required this.email,
  required this.nohp,
  required this.image});

  static List<Contact> getContact() {
    return <Contact>[
      Contact(
        id: 1,
        nama: 'Nama   : Monkey D. Luffy',
        email: 'Email    : luffy@gmail.com',
        nohp: 'No.HP  : 082331564765',
        image: 'images/luffy.jpg'
      ),
      Contact(
        id: 2,
        nama: 'Nama   : Roronoa Zoro',
        email: 'Email    : zoro@gmail.com',
        nohp: 'No.HP  : 087544353212',
        image: 'images/zoro.jpg'
      ),
      Contact(
        id: 3,
        nama: 'Nama   : Trafalgar D. Waterlaw',
        email: 'Email    : law@gmail.com',
        nohp: 'No.HP  : 082225654534',
        image: 'images/law.jpg'
      ),
      Contact(
        id: 4,
        nama: 'Nama   : Vinsmoke Sanji',
        email: 'Email    : sanji@gmail.com',
        nohp: 'No.HP  : 089765433214',
        image: 'images/sanji.jpg'
      ),
      Contact(
        id: 5,
        nama: 'Nama   : Portgas D. Ace',
        email: 'Email    : ace@gmail.com',
        nohp: 'No.HP  : 081567654455',
        image: 'images/ace.jpg'
      ),
      Contact(
        id: 6,
        nama: 'Nama   : Donquixote Doflamingo (Donquixote Family)',
        email: 'Email    : doffy@gmail.com',
        nohp: 'No.HP  : 083344545678',
        image: 'images/doflamingo.jpg'
      ),
    ];
  }
}
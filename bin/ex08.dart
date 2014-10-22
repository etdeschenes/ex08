import 'package:ex08/fonctions.dart';

//no. 1
no1() {
  List associations = [
    {"name": "VC", "description": "Volleyball club"}, 
    {"name": "BC", "description": "Basketball club"}
  ];
  List members = [
    {"associationCode" : "VC", 
      "firstName": "Alfred", 
      "lastName": "Clummed", 
      "email": "ac@gmail.com"
    },
    {"associationCode" : "VC", 
      "firstName": "Henri", 
      "lastName": "Mariacha", 
      "email": "hm@gmail.com"
    },
    {"associationCode" : "VC", 
      "firstName": "Bertrand", 
      "lastName": "Tillent", 
      "email": "bt@gmail.com"
    },
    {"associationCode" : "VC", 
      "firstName": "Robert", 
      "lastName": "Verse", 
      "email": "rv@gmail.com"
    },
    {"associationCode" : "BC", 
      "firstName": "Camille", 
      "lastName": "Chenville", 
      "email": "cc@gmail.com"
    },
    {"associationCode" : "BC", 
      "firstName": "Catherine", 
      "lastName": "Napind", 
      "email": "cn@gmail.com"
    },
    {"associationCode" : "BC", 
      "firstName": "Amelie", 
      "lastName": "Bolders", 
      "email": "ab@gmail.com"
    },
    {"associationCode" : "BC", 
      "firstName": "Zoe", 
      "lastName": "Noyer", 
      "email": "zf@gmail.com"
    }
  ];

  print('#1 : Classement de la liste des membres par nom de famille, prénom et lettre donnée.');
  print("L'ordre en fonction du nom de famille : ${sortByLastName(members)}");
  print("L'ordre en fonction du prénom : ${sortByFirstName(members)}");
  print("Le nom de famille débutant par la lettre T : ${sortByLetter(members, 'T')}");
  print('');
}

//no. 2
no2() {
  List vc = new List();
  var association1 = new Association("VC", "Volleyball club", "To play volleyball");
  var member1 = new Member("VC", "Alfred", "Clummed", "ac@gmail.com");
  var member2 = new Member("VC", "Henri", "Mariacha", "hm@gmail.com");
  vc.add(member1);
  vc.add(member2);
  List bc = new List();
  var association2 = new Association("BC", "Basketball club", "To play basketball");
  var member4 = new Member("BC", "Camille", "Chenville", "cc@gmail.com");
  var member5 = new Member("BC", "Catherine", "Napind", "cn@gmail.com");
  bc.add(member4);
  bc.add(member5);
  var member6 = new Member("VC", "Sylvain", "Garnier", "sg@gmail.com");
  vc.add(member6);
  association1.addMember(member6);
  association2.deleteMember('ab@gmail.com');
  association2.editMember("BC", "Catherine", "Napind", "cn@gmail.com");
  print("#2 : Classe permettant d'ajouter, d'enlever ou de modifier un membre d'association.");
  print('$association1 $vc');
  print('');
  print('$association2 $bc');
}

main() {
  no1();
  no2();
}
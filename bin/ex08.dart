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

  print('====================================================================================');
  print('#1 : Classement de la liste des membres par nom de famille, prénom et lettre donnée.');
  print('====================================================================================');
  print("Association donnée à classer : $members");
  print("L'ordre en fonction du nom de famille : ${extractByLastName(members)}");
  print("L'ordre en fonction du prénom : ${extractByFirstName(members)}");
  print("Le nom de famille débutant par la lettre T : ${extractByLetter(members, 'T')}");
  print('');
}

//no. 2
no2() {
  var associationTotal = new Association("","","");
  var memberTotal = new Member("","","","");

  var association1 = new Association("VC", "Volleyball club", "To play volleyball");
  associationTotal.addAssociation(association1);

  var member1 = new Member("VC", "Alfred", "Clummed", "ac@gmail.com");
  memberTotal.addMember(member1);

  var member2 = new Member("VC", "Henri", "Mariacha", "hm@gmail.com");
  memberTotal.addMember(member2);

  var membership1 = new Membership(association1, member1, "reserve gym");
  association1.memberships.add(membership1);
  member1.memberships.add(membership1);

  var membership2 = new Membership(association1, member2, "bring balls");
  association1.memberships.add(membership2);
  member2.memberships.add(membership2);

  var association2 = new Association("BC", "Basketball club", "To play basketball");
  associationTotal.addAssociation(association2);

  var member3 = new Member("BC", "Camille", "Chenville", "cc@gmail.com");
  memberTotal.addMember(member3);

  var member4 = new Member("BC", "Catherine", "Napind", "cn@gmail.com");
  memberTotal.addMember(member4);

  var membership3 = new Membership(association2, member3, "reserve gym");
  association2.memberships.add(membership3);
  member3.memberships.add(membership3);

  var membership4 = new Membership(association2, member4, "bring balls");
  association2.memberships.add(membership4);
  member4.memberships.add(membership4);

  membership3.member.deleteMember('cc@gmail.com');
  membership4.member.editMember("BC", "Catherine", "Napind", "cn@gmail.com");

  print('===================================================================================');
  print("#2 : Classe permettant d'ajouter, d'enlever ou de modifier un membre d'association.");
  print('===================================================================================');
  for (var association in associationTotal) {
    print('Association');
    print('-----------');
    print(association.toString());
    print('    Members');
    print('    -------');
    for (var membership in association.memberships) {
      print(membership.toString());
    }
  }
  print('===============');
  for (var members in memberTotal) {
    print('Member');
    print('------');
    print(members.toString());
    print('    Associations');
    print('    ------------');
    for (var membership in members.memberships) {
      print(membership.toString());
    }
  }
}

main() {
  no1();
  no2();
}
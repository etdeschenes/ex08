library ex08;

//no. 1
//Source : https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart-core.List#id_sort

List extractByLastName(List members) {
  List sorted = new List();
  members.sort((a, b) => a['lastName'].compareTo(b['lastName']));
  sorted.add(members);
  return sorted;
}

List extractByFirstName(List members) {
  List sorted = new List();
  members.sort((a, b) => a['firstName'].compareTo(b['firstName']));
  sorted.add(members);
  return sorted;
}

List extractByLetter(List members, String letter) {
  List sorted = new List();
  for (var lastName in members) {
   if (lastName['lastName'][0] == letter)
     sorted.add(lastName);
  }
  return sorted;
}

//No. 2
//Source : https://github.com/dzenanr/association et http://stackoverflow.com/questions/18459181/extending-base-list-class-with-extra-functionality-in-dart-language/18506119#18506119

class Association {
  String associationCode;
  String name;
  String description;
  var memberships = new List();

  Association(String this.associationCode,
              String this.name,
              String this.description);

  String toString() {
    return '{\n' 'Association \n'
           'associationCode : ${associationCode}\n'
           'name : ${name}\n'
           'description : ${description}\n'
           '}\n';
  }

  var associations = new List();
  Iterator get iterator => associations.iterator;

  addAssociation(Association association) {
     associations.add(association);
  }

  deleteAssociation(Association association) {
    for (var i = 0; i < associations.length; i++) {
      if (associations[i].name == association.name) {
          associations.removeAt(i);
      }
    }
  }
}

class Member {
  String associationCode;
  String firstName;
  String lastName;
  String email;
  var memberships = new List();

  Member(String this.associationCode,
         String this.firstName,
         String this.lastName,
         String this.email);

  String toString() {
    return '{\n' 'Member \n'
           '  associationCode : ${associationCode} \n'
           '  firstName : ${firstName}\n'
           '  lastName : ${lastName}\n'
           '  email : ${email}\n'
           '}\n';
  }

  var members = new List();
  Iterator get iterator => members.iterator;

  addMember(Member member) {
      members.add(member);
  }

  deleteMember(String email) {
    for (var i = 0; i < members.length; i++) {
      if (members[i].email == email) {
          members.removeAt(i);
      }
    }
  }

  editMember(String associationCode, String firstName, String lastName, String email) {
    for (var i = 0; i < members.length; i++) {
      if (members[i]["firstName"] == firstName && members[i]["lastName"] == lastName) {
          members[i]["associationCode"] = associationCode;
          members[i]["firstName"] = firstName;
          members[i]["lastName"] = lastName;
          members[i]["email"] = email;
      }
    }
  }
}

class Membership {
  Association association;
  Member member;
  String description;
  List memberships = new List();

  Membership(Association this.association,
             Member this.member,
             String this.description);

  String toString() {
    return '    {\n'
           '      association.name : ${association.name}\n'
           '      firstName : ${member.firstName}\n'
           '      lastName : ${member.lastName}\n'
           '      description : ${description}\n'
           '    }\n';
  }

  addMembership(Membership membership) {
    memberships.add(membership);
  }

  deleteMembership(Membership membership) {
    memberships.remove(membership);
  }
}


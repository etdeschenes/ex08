library ex08;

//no. 1
//Source : https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart-core.List#id_sort

List sortByLastName(List members) {
  List sorted = new List();
  members.sort((a, b) => a['lastName'].compareTo(b['lastName']));
  sorted.add(members);
  return sorted;
}

List sortByFirstName(List members) {
  List sorted = new List();
  members.sort((a, b) => a['firstName'].compareTo(b['firstName']));
  sorted.add(members);
  return sorted;
}

List sortByLetter(List members, String letter) {
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
  var assoMember = new List();

  Association(String associationCode, String name, String description) {
    this.associationCode = associationCode;
    this.name = name;
    this.description = description;
  }

  String toString() {
    return '{\n' 'Association \n'
           'associationCode : ${associationCode}\n'
           'name : ${name}\n'
           'description : ${description}\n'
           '}\n';
  }

  addMember(Member member) {
      assoMember.add(member);
  }

  deleteMember(String email) {
    for (var i = 0; i < assoMember.length; i++) {
      if (assoMember[i].email == email) {
          assoMember.removeAt(i);
      }
    }
  }

  editMember(String associationCode, String firstName, String lastName, String email) {
    for (var i = 0; i < assoMember.length; i++) {
      if (assoMember[i]["firstName"] == firstName && assoMember[i]["lastName"] == lastName) {
          assoMember[i]["associationCode"] = associationCode;
          assoMember[i]["firstName"] = firstName;
          assoMember[i]["lastName"] = lastName;
          assoMember[i]["email"] = email;
      }
    }
  }
}

class Member {
  String associationCode;
  String firstName;
  String lastName;
  String email;
  var memberList = new List();

  Member(String associationCode, String firstName, String lastName, String email) {
    this.associationCode = associationCode;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
  }

  String toString() {
    return '{\n' 'Member \n'
           '  associationCode : ${associationCode} \n'
           '  firstName: ${firstName}\n'
           '  lastName: ${lastName}\n'
           '  email: ${email}\n'
           '}\n';
  }

  addAssociation(Association association) {
     memberList.add(association);
  }

  deleteAssociation(Association association) {
    for (var i = 0; i < memberList.length; i++) {
      if (memberList[i].name == association.name) {
          memberList.removeAt(i);
      }
    }
  }
}

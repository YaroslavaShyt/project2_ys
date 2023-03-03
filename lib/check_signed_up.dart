mixin Person{
  String? _surname;
  String? _name;
  int? _age;
  String errorName = '';

  int? get age{
    return _age;
  }

  set age(newAge){
    newAge != null ?
    newAge > 15 && newAge < 100 ?
    _age = newAge :
    errorName += 'Age can be in range 16-99!\n':
    errorName += 'Wrong value!\n';
  }

  String? get surname {
    return _surname;
  }

  String? get name {
    return _name;
  }

  set surname(surn) {
    surn is String && surn.isNotEmpty ?
    (RegExp(r'^[A-Za-z]+$').hasMatch(surn) ?
    _surname = surn :
    errorName += 'Surname contains non-alphabetic letters!\n') :
    errorName += ('Surname cannot be empty!\n');
  }

  set name(name) {
    name is String && name.isNotEmpty ?
    (RegExp(r'^[A-Za-z]+$').hasMatch(name) ?
    _name = name :
    errorName += 'Name contains non-alphabetic letters!\n') :
    errorName += 'Name cannot be empty!\n';
  }
}



class Man with Person{
  late String sex;
  Man(String? userSurname, String? userName, int? userAge, {String s='male'}) {
    surname = userSurname;
    name = userName;
    age = userAge;
    sex = s;
  }
  static final Man data = Man('', '', 0);

  factory Man.create(){
    return data;
  }
  @override
  String toString()=> 'Man: $name $surname';
}

class Woman with Person{
  late String sex;
  Woman(String? userSurname, String? userName, int? userAge, {String s='female'}) {
    surname = userSurname;
    name = userName;
    age = userAge;
    sex = s;
  }
  static final Woman data = Woman('', '', 0);

  factory Woman.create(){
    return data;
  }
  @override
  String toString()=> 'Woman: $name $surname';
}

Function happyBirthday(num age){
  int increment = 15;
  num result(){
    age += increment;
    return age;
  }
  return result;
}
void checkSex(person){
  assert(person.sex == 'female', 'No, this is not a woman');
  print('This is a woman');
}


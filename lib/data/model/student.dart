class Student {
  int id;
  String phoneNumber;
  String firstName;
  String lastName;
  String fullName;
  String gender;
  String degree;
  String photo;
  String address;

  Student({
    required this.id,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.gender,
    required this.degree,
    required this.photo,
    required this.address,
  });
}

var studentList = [
  Student(
      id: 1,
      phoneNumber: '234667126',
      firstName: 'John',
      lastName: 'Lenon',
      fullName: 'John Lenon',
      gender: 'Pria',
      degree: 'SMA',
      photo: 'https://ui-avatars.com/api/?name=John+Doe&size=128',
      address: 'Hollywood'),
  Student(
      id: 2,
      phoneNumber: '4234234',
      firstName: 'Jane',
      lastName: 'Swift',
      fullName: 'Jane Swift',
      gender: 'Wanita',
      degree: 'SMP',
      photo: 'https://ui-avatars.com/api/?name=Jane+Swift&size=128',
      address: 'Lampung'),
  Student(
      id: 3,
      phoneNumber: '91236778',
      firstName: 'John',
      lastName: 'Wick',
      fullName: 'John Wick',
      gender: 'Pria',
      degree: 'SMA',
      photo: 'https://ui-avatars.com/api/?name=John+Wick&size=128',
      address: 'Jakarta'),
  Student(
      id: 4,
      phoneNumber: '8365632',
      firstName: 'Siti',
      lastName: 'Halimah',
      fullName: 'Siti Halimah',
      gender: 'Wanita',
      degree: 'SMP',
      photo: 'https://ui-avatars.com/api/?name=Siti+Halimah&size=128',
      address: 'Bandung'),
  Student(
      id: 5,
      phoneNumber: '78556262',
      firstName: 'Taylor',
      lastName: 'Chen',
      fullName: 'Taylor Chen',
      gender: 'Wanita',
      degree: 'SMA',
      photo: 'https://ui-avatars.com/api/?name=Taylor+Chen&size=128',
      address: 'Surabaya'),
  Student(
      id: 6,
      phoneNumber: '3242372551',
      firstName: 'Brad',
      lastName: 'Pit',
      fullName: 'Brad Pit',
      gender: 'Pria',
      degree: 'SMA',
      photo: 'https://ui-avatars.com/api/?name=Brad+Pit&size=128',
      address: 'Bali'),
];

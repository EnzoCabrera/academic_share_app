class SignInUniversityModel {
  final String name;
  final String college;
  final String course;
  final String email;
  final String password;

  SignInUniversityModel(
      {required this.name,
      required this.college,
      required this.course,
      required this.email,
      required this.password});
  static List<SignInUniversityModel> getSignInUniversity() {
    return <SignInUniversityModel>[
      SignInUniversityModel(
          name: 'Enzo Nascimento Cabrera',
          college: 'UNA',
          course: 'Ciência da computação',
          email: 'enzo2005cabrera@gmail.com',
          password: '123'),
      SignInUniversityModel(
          name: 'Pedro Carne Conceição',
          college: 'UFU',
          course: 'Sistema de informação',
          email: 'pedro@gmail.com',
          password: '123'),
      SignInUniversityModel(
          name: 'Swit Gabriel',
          college: 'UFRJ',
          course: 'Relações publicas',
          email: 'swit@gmail.com',
          password: '123'),
    ];
  }
}

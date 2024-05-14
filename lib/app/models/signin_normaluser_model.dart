class SignInNormalUserModel {
  final String name;
  final String email;
  final String password;

  SignInNormalUserModel(
      {required this.name,
      required this.email,
      required this.password});
  static List<SignInNormalUserModel> getSignInNormalUser() {
    return <SignInNormalUserModel>[
      SignInNormalUserModel(
          name: 'Enzo Nascimento Cabrera',
          email: 'enzo2005cabrera@gmail.com',
          password: '123'),
      SignInNormalUserModel(
          name: 'Pedro Carne Conceição',
          email: 'pedro@gmail.com',
          password: '123'),
      SignInNormalUserModel(
          name: 'Swit Gabriel',
          email: 'swit@gmail.com',
          password: '123'),
    ];
  }
}
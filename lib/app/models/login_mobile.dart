class LoginModel {
  final String email;
  final String password;

  LoginModel({required this.email, required this.password});
  static List<LoginModel> getLogin() {
    return <LoginModel>[
      LoginModel(email: 'enzo2005cabrera@gmail.com', password: '123'),
      LoginModel(email: 'pedro@gmail.com', password: '123'),
      LoginModel(email: 'swit@gmail.com', password: '123'),
    ];
  }
}

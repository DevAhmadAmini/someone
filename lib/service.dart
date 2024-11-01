// ignore_for_file: public_member_api_docs, sort_constructors_first
class Service {
  final String id;
  Service({
    required this.id,
  });

  void loginUser() {
    print("User has been logged in");
  }

  void signUpUser() {
    print("User has been signed up");
  }

  void getUserData() {
    print("User's Data has been captured");
  }

  void cancelUserAuthentication(){
    print("User's Data has been Expired");
  }
}

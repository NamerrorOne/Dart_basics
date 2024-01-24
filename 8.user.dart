mixin EmailSystem on User {
  String getEmailSystem() {
    return email.split('@')[1];
  }
}

class User {
  String email;

  User({required this.email});
}

class AdminUser extends User with EmailSystem {
  AdminUser({required super.email});
}

class GeneralUser extends User {
  GeneralUser({required super.email});
}

class UserManager<T extends User> {
  UserManager();

  List<T> users = [];

  void addUser(T user) {
    this.users.add(user);
  }

  void removeUser(T user) {
    this.users.remove(user);
  }

  getAllEmails() {
    List<String> usersEmails = [];
    this.users.forEach((user) {
      if (user is AdminUser) {
        usersEmails.add(user.getEmailSystem());
      } else {
        usersEmails.add(user.email);
      }
    });

    return usersEmails;
  }
}

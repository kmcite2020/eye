import '../main.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

final usersRM = RM.inject(
  () => Users(),
  persist: () => persisted('users', Users.fromJson),
);
final userRM = RM.inject<User>(
  () => User(),
  persist: () => persisted(
    'user',
    User.fromJson,
  ),
  sideEffects: SideEffects.onData(
    (user) => switch (user.isSignedIn) {
      true => navigator.toAndRemoveUntil(Routes.home()),
      false => navigator.toAndRemoveUntil(Routes.auth()),
    },
  ),
  autoDisposeWhenNotUsed: false,
);

User get currentUser => userRM.state;

Users get users => usersRM.state;
void login(User user) {
  try {
    print('Attempting to log in user: ${user.email}');
    final existingUser = users.users[user.email];
    if (existingUser == null) {
      print('User not found: ${user.email}');
      return;
    }

    if (existingUser.isSignedIn) {
      print('User is already signed in: ${user.email}');
      userRM.state = existingUser;
      return;
    }

    if (existingUser.password == user.password) {
      print('Login successful for user: ${user.email}');
      userRM.state = existingUser;
    } else {
      print('Incorrect password for user: ${user.email}');
    }
  } catch (e) {
    print('Error during login: $e');
    userRM.state = User();
  }
}

void register(User user) {
  if (users.users.containsKey(user.email)) {
    print('User already exists: ${user.email}');
    return;
  }
  usersRM.state = Users(users: Map.of(users.users)..[user.email] = user);
  userRM.state = user;
}

void deleteUser(String email) {
  if (!users.users.containsKey(email)) {
    print('User not found: $email');
    return;
  }
  usersRM.state = Users(users: Map.of(users.users)..remove(email));
}

void logOut() => userRM.state = User();

bool get isSignedIn => currentUser.isSignedIn;
bool get isNotSignedIn => currentUser.isNotSignedIn;

@freezed
class Users with _$Users {
  const factory Users({
    @Default(<String, User>{}) final Map<String, User> users,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default('') final String email,
    @Default('') final String password,
  }) = _User;
  const User._();
  bool get isNotSignedIn => email == '';
  bool get isSignedIn => email != '';

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

final emailRM = RM.inject<String>(() => '');
final passwordRM = RM.inject<String>(() => '');

class AuthUI extends UI {
  bool get isUserPresent => users.users.containsKey(emailRM.state);
  const AuthUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onChanged: (value) {
            emailRM.state = value;
          },
        ).pad(),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
          onChanged: (value) {
            passwordRM.state = value;
          },
        ).pad(),
        if (isUserPresent)
          ElevatedButton.icon(
            icon: Icon(Icons.login),
            label: Text('Login'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: passwordRM.state == users.users[emailRM.state]!.password
                ? () {
                    if (emailRM.state != '' && passwordRM.state != '') {
                      if (passwordRM.state == users.users[emailRM.state]!.password) {
                        login(User(email: emailRM.state, password: passwordRM.state));
                      }
                    }
                  }
                : null,
          ).pad()
        else
          ElevatedButton.icon(
            icon: Icon(Icons.person_add),
            label: Text('Register'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: emailRM.state != '' && passwordRM.state != ''
                ? () {
                    register(User(email: emailRM.state, password: passwordRM.state));
                  }
                : null,
          ).pad(),
        Divider(color: Colors.grey),
        ...users.users.entries.map(
          (entry) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(entry.key[0].toUpperCase(), style: TextStyle(color: Colors.white)),
              ),
              title: Text(entry.key),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.login, color: Colors.green),
                    onPressed: () {
                      login(entry.value);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      deleteUser(entry.key);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

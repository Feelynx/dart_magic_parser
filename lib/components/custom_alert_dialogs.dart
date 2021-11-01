import 'package:desox_fran_website/components/widget.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/material.dart';

enum UserType { user, admin }

class SupportCustomAlertDialog extends StatefulWidget {
  @override
  _SupportCustomAlertDialogState createState() => _SupportCustomAlertDialogState();
}

class _SupportCustomAlertDialogState extends State<SupportCustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      content: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width / 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: kPantoneWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 9,
                    child: Row(
                      children: [
                        Icon(
                          Icons.support_agent_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Customer support',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: kPantoneWhite,
                child: Scrollbar(
                  isAlwaysShown: false,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Compila i campi di seguito per richiedere assistenza'),
                        ),
                        CustomTextField(
                          iconData: Icons.person_outline,
                          labelText: 'Nome e cognome',
                          hintText: 'Inserisci qui il tuo nome e cognome',
                          hasMaxLines: false,
                          isPasswordField: false,
                        ),
                        CustomTextField(
                          iconData: Icons.contact_mail,
                          labelText: 'Email',
                          hintText: 'Inserisci la tua email',
                          hasMaxLines: false,
                          isPasswordField: false,
                        ),
                        CustomTextField(
                          iconData: Icons.alternate_email,
                          labelText: 'Oggetto email',
                          hintText: 'Inserisci l\'oggetto della mail',
                          hasMaxLines: false,
                          isPasswordField: false,
                        ),
                        CustomTextField(
                          iconData: Icons.mail_outline,
                          labelText: 'Testo email',
                          hintText: 'Inserisci qui il testo della mail',
                          hasMaxLines: true,
                          isPasswordField: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: kPantonePrimaryDark,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.attach_file_outlined,
                        color: kPantoneWhite,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.send_outlined,
                        color: kPantoneWhite,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginCustomDialog extends StatefulWidget {
  @override
  _LoginCustomDialogState createState() => _LoginCustomDialogState();
}

class _LoginCustomDialogState extends State<LoginCustomDialog> {
  UserType _userType = UserType.user;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: EdgeInsets.only(top: 10.0),
      title: Text(
        'Login',
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20,
      ),
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 4.5,
            child: Scrollbar(
              isAlwaysShown: false,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      iconData: Icons.person_outline,
                      labelText: 'Username',
                      hasMaxLines: false,
                      isPasswordField: false,
                      hintText: '',
                    ),
                    CustomTextField(
                      iconData: Icons.lock_outline,
                      labelText: 'Password',
                      hasMaxLines: false,
                      isPasswordField: true,
                      hintText: '',
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: const Text('Utente'),
                            leading: Radio<UserType>(
                              value: UserType.user,
                              groupValue: _userType,
                              onChanged: (UserType? value) {
                                setState(() {
                                  _userType = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text('Admin'),
                            leading: Radio<UserType>(
                              value: UserType.admin,
                              groupValue: _userType,
                              onChanged: (UserType? value) {
                                setState(() {
                                  _userType = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Password dimenticata?'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Registrati'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

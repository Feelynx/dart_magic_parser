import 'package:desox_fran_website/components/custom_alert_dialogs.dart';
import 'package:desox_fran_website/components/custom_text_button_appbar.dart';
import 'package:desox_fran_website/presentation/screens/homepage_screen.dart';
import 'package:desox_fran_website/presentation/screens/who_we_are_screen.dart';
import 'package:desox_fran_website/util/costants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class ScreenBase extends StatefulWidget {
  const ScreenBase({required this.largeSizeLayoutBody, required this.smallSizeLayoutBody});

  final Widget largeSizeLayoutBody;
  final Widget smallSizeLayoutBody;

  @override
  _ScreenBaseState createState() => _ScreenBaseState();
}

class _ScreenBaseState extends State<ScreenBase> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1100) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: kPantoneWhite,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: GestureDetector(
                  onTap: () {
                    setState(() {
                      Routemaster.of(context).push(HomePageScreen.id);
                    });
                  },
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/DeSossiFranchellucciLogo500NoText.png',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        VerticalDivider(
                          color: kPantoneSecondary,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Associazione Professionale\nDe Sossi Franchellucci',
                          style: TextStyle(color: kPantoneSecondary, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                toolbarHeight: 130,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.1,
                    color: kPantoneSecondary,
                  ),
                ),
                actions: [
                  CustomAppBarTextButton(
                    onPressed: () {
                      Routemaster.of(context).push(HomePageScreen.id);
                    },
                    text: 'Home',
                  ),
                  CustomAppBarTextButton(
                    onPressed: () {
                      Routemaster.of(context).push(WhoWeAreScreen.id);
                    },
                    text: 'Chi siamo',
                  ),
                  CustomAppBarTextButton(onPressed: () {}, text: 'Servizi'),
                  CustomAppBarTextButton(onPressed: () {}, text: 'News'),
                  CustomAppBarTextButton(onPressed: () {}, text: 'Contatti'),
                  CustomAppBarTextButton(onPressed: () {}, text: 'Partners'),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search_outlined,
                        color: kPantonePrimaryDark,
                        size: 30,
                      ),
                      tooltip: 'Cerca nel sito',
                      hoverColor: Colors.transparent,
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      hoverColor: Colors.transparent,
                      icon: Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                        color: kPantonePrimaryDark,
                      ),
                      tooltip: 'Login',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext build) {
                            return LoginCustomDialog();
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              body: Column(
                children: [
                  Expanded(child: widget.largeSizeLayoutBody),
                  /*Container(
                    width: MediaQuery.of(context).size.width,
                    color: kPantonePrimaryDark,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '© 2021 Copyright De Sossi Franchellucci. Tutti i diritti riservati | P.IVA 10822281001 ',
                            style: TextStyle(color: kPantoneWhite),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SupportCustomAlertDialog();
                    },
                  );
                },
                tooltip: 'Richiedi supporto',
                child: Icon(Icons.support_agent_outlined),
                backgroundColor: kPantonePrimary,
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: kPantoneWhite,
                elevation: 0,
                titleSpacing: 0,
                automaticallyImplyLeading: false,
                title: GestureDetector(
                  onTap: () {
                    setState(() {
                      Routemaster.of(context).push(HomePageScreen.id);
                    });
                  },
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) => IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: kPantonePrimary,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                        Image.asset(
                          'images/DeSossiFranchellucciLogo500NoText.png',
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        VerticalDivider(
                          color: kPantoneSecondary,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Associazione Professionale\nDe Sossi Franchellucci',
                            style: TextStyle(color: kPantoneSecondary, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                toolbarHeight: 90,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.1,
                    color: kPantoneSecondary,
                  ),
                ),
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      child: GestureDetector(
                        onTap: () {
                          Routemaster.of(context).push(HomePageScreen.id);
                        },
                        child: Center(
                          child: Image.asset('images/DeSossiFranchellucciLogo500NoText.png'),
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Home'),
                      leading: Icon(
                        Icons.home,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {
                        Routemaster.of(context).push(HomePageScreen.id);
                      },
                    ),
                    ListTile(
                      title: const Text('Chi siamo'),
                      leading: Icon(
                        Icons.person_outline,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {
                        Navigator.of(context).pop();
                        Routemaster.of(context).push(WhoWeAreScreen.id);
                      },
                    ),
                    ListTile(
                      title: const Text('Servizi'),
                      leading: Icon(
                        Icons.miscellaneous_services_outlined,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Contatti'),
                      leading: Icon(
                        Icons.contacts,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('News'),
                      leading: Icon(
                        Icons.article_outlined,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Partners'),
                      leading: Icon(
                        Icons.people,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Login'),
                      leading: Icon(
                        Icons.account_circle_outlined,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext build) {
                            return LoginCustomDialog();
                          },
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Cerca'),
                      leading: Icon(
                        Icons.search,
                        color: kPantonePrimary,
                      ),
                      hoverColor: kPantonePrimary.withOpacity(0.3),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [
                  Expanded(child: widget.smallSizeLayoutBody),
                  /*Container(
                    width: MediaQuery.of(context).size.width,
                    color: kPantonePrimaryDark,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '© 2021 Copyright De Sossi Franchellucci. Tutti i diritti riservati | P.IVA 10822281001 ',
                            style: TextStyle(color: kPantoneWhite),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SupportCustomAlertDialog();
                    },
                  );
                },
                tooltip: 'Richiedi supporto',
                child: Icon(Icons.support_agent_outlined),
                backgroundColor: kPantonePrimary,
              ),
            );
          }
        },
      ),
    );
  }
}

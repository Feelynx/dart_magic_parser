/*
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:webtry/components/custom_alert_dialogs.dart';
import 'package:webtry/components/custom_loader.dart';
import 'package:webtry/components/widget.dart';
import 'package:webtry/presentation/screens/services_screen.dart';
import 'package:webtry/util/costants.dart';

class HomePageScreen extends StatefulWidget {
  static const String id = '/';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SingleTickerProviderStateMixin {
  bool isInterfaceReady = false;
  late TabController _tabController;

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      switch (_tabController.index) {
        case 2:
          Routemaster.of(context).push(ServicesScreen.id);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(() {
          isInterfaceReady = true;
        });
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!isInterfaceReady) {
      return CustomLoader();
    } else {
      return SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            physics: ClampingScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverSafeArea(
                    top: false,
                    bottom: false,
                    sliver: SliverAppBar(
                      pinned: true,
                      backgroundColor: kPantoneWhite,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      title: IntrinsicHeight(
                        child: Row(
                          children: [
                            Image.asset(
                              'images/DeSossiFranchellucciLogo500NoText.png',
                              height: 120,
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
                              style: TextStyle(color: kPantoneSecondary),
                            ),
                          ],
                        ),
                      ),
                      toolbarHeight: 130,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                        ),
                        side: BorderSide(
                          width: 0.5,
                          color: kPantoneSecondary,
                        ),
                      ),
                      actions: [
                        IconButton(
                          icon: Icon(
                            Icons.search_outlined,
                            color: kPantonePrimaryDark,
                            size: 30,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(30),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(right: 40),
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
                        )
                      ],
                      bottom: TabBar(
                        indicatorPadding: EdgeInsets.all(8),
                        indicatorColor: kPantonePrimary,
                        labelColor: kPantonePrimary,
                        unselectedLabelColor: kPantoneSecondary,
                        overlayColor: MaterialStateProperty.all(kPantonePrimary.withOpacity(0.2)),
                        controller: _tabController,
                        onTap: (int index) {
                          _handleTabSelection();
                        },
                        tabs: [
                          Tab(
                            icon: Icon(Icons.home),
                            text: 'Home',
                            iconMargin: EdgeInsets.all(1),
                          ),
                          Tab(
                            icon: Icon(Icons.person_outline),
                            text: 'Chi siamo',
                            iconMargin: EdgeInsets.all(1),
                          ),
                          Tab(
                            icon: Icon(Icons.miscellaneous_services_outlined),
                            text: 'Servizi',
                            iconMargin: EdgeInsets.all(1),
                          ),
                          Tab(
                            icon: Icon(Icons.article_outlined),
                            text: 'News',
                            iconMargin: EdgeInsets.all(1),
                          ),
                          Tab(
                            icon: Icon(Icons.contacts),
                            text: 'Contatti',
                            iconMargin: EdgeInsets.all(1),
                          ),
                          Tab(
                            icon: Icon(Icons.people),
                            text: 'Partners',
                            iconMargin: EdgeInsets.all(1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      fit: StackFit.passthrough,
                      children: [
                        Positioned(
                          child: Image.asset(
                            'images/HomeBackgroundDark.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.all(160.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Associazione Professionale De Sossi Franchellucci, da sempre al tuo fianco per aiutarti.",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold, color: kPantoneWhite),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  descriptionHomePage,
                                  style: TextStyle(fontSize: 16, color: kPantoneWhite),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'images/accountanthome.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned(
                          child: Container(
                            color: kPantonePrimary,
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
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),
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
            backgroundColor: kPantonePrimaryDark,
          ),
        ),
      );
    }
  }
}
*/

import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/profile_custom_appbar.dart';
import 'package:days_mobile/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: ProfileCustomAppbar(
            title: "Perfil",
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          200.0,
                        ),
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: width * 0.45,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Column(
                        children: [
                          ProfileItem(
                            title: 'Nome',
                            content: 'Miguel Ângelo Carvalho Ferreira',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Curso',
                            content: 'Informática e Tecnologias Multimédia',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Limitações',
                            content: 'É ganda morcão',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Alergias',
                            content: 'Ácaros e pólen',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Contacto de emergência',
                            content: '912345678',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          200.0,
                        ),
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          width: width * 0.45,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Column(
                        children: [
                          ProfileItem(
                            title: 'Email',
                            content: 'miguel@days.com',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Enc. de educação',
                            content: 'Sónia Maria Carvalho Freitas',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Cartão de cidadão',
                            content: '123456789',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Morada',
                            content: 'Rua lá do sítio',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Aniversário',
                            content: '02/03/2003',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

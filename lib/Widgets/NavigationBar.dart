import 'package:dmd/Utils/constants.dart';
import 'package:dmd/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 120,
        child: Container(
            decoration: BoxDecoration(
                color: Cst.darkBG,
                border: Border(
                    right: BorderSide(
                        color: Colors.grey.withOpacity(0.03), width: 2))),
            child: Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        radius: 22,
                        child: SvgPicture.asset(
                          'assets/logo.svg',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Divider(color: Colors.grey.withOpacity(0.03), thickness: 2),
                    SizedBox(height: 30),
                    CustomButton(
                      icon: 'assets/icons/Home.svg',
                      onClick: () {},
                      size: null,
                      isActive: false,
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      icon: 'assets/icons/Flash.svg',
                      onClick: () {},
                      size: 22,
                      isActive: false,
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      icon: 'assets/icons/Category.svg',
                      onClick: () {},
                      size: 22,
                      isActive: true,
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      icon: 'assets/icons/Users.svg',
                      onClick: () {},
                      size: 22,
                      isActive: false,
                    ),
                    SizedBox(height: 30),
                    CustomButton(
                      icon: 'assets/icons/Setting-1.svg',
                      onClick: () {},
                      size: 22,
                      isActive: false,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: CustomButton(
                      icon: 'assets/icons/Logout.svg',
                      onClick: () {},
                      size: 22,
                      isActive: false,
                    ),
                  ),
                ),
              ],
            )));
  }
}

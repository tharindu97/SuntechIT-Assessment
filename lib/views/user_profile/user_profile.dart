import 'package:ecommerce/bloc/authentication_bloc.dart';
import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:ecommerce/widgets/user_profile_common_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  static const routeName = './user';
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isUserProfile = true;

  String? token;
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    prefs.then((value) => {token = value.getString('token')});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/menu.png"),
                Image.asset("images/notification.png"),
              ],
            ),
          ),
          // FutureBuilder(
          //   future: AuthenticationBloc().getUserDetails(token: token.toString()),
          //     builder: (context, snapshot){
          //       if(snapshot.hasData){
          //           return ;
          //       }else if(snapshot.hasError){
          //         return const Center(
          //           child: Text("Error...!"),
          //         );
          //       }
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     },
          // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/propic_img.png"),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 10.0,
              ),
              textWidget(title: "Tharindu Kavishna", fontSize: 30),
              const SizedBox(
                height: 10.0,
              ),
              if (isUserProfile)
                textWidget(title: "tharindu@gmail.com", fontSize: 20),
              const SizedBox(
                height: 70.0,
              ),
              isUserProfile
                  ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CommonButton(
                  title: "Edit Profile",
                  onTap: () {
                    setState(() {
                      isUserProfile = false;
                    });
                  },
                ),
              )
                  : Column(
                children: [
                  // User Full Name
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.gray,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.lightGray,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding:
                          const EdgeInsets.only(left: 10, right: 10),
                          child: Image.asset("images/username.png"),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Full name",
                              hintStyle:
                              TextStyle(color: AppColor.lightGray),
                              border: InputBorder.none,
                              labelStyle: TextStyle(fontSize: 20.0),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  // User Email
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.gray,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.lightGray,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding:
                          const EdgeInsets.only(left: 10, right: 10),
                          child: Image.asset("images/email.png"),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "example@gmail.com",
                              hintStyle:
                              TextStyle(color: AppColor.lightGray),
                              border: InputBorder.none,
                              labelStyle: TextStyle(fontSize: 20.0),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // const SizedBox(
                  //   height: 10,
                  // ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: CommonButton(
                      title: "Save",
                      onTap: () {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isUserProfile = true;
                      });
                    },
                    child: textWidget(title: "Cancel", fontSize: 23),
                  ),
                ],
              ),
              if (isUserProfile) textWidget(title: "Logout", fontSize: 23),
            ],
          ),
        ],
      ),
    );
  }
}

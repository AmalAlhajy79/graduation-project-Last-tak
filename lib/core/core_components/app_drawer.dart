// import 'package:e_library/core/storage/storage_handler.dart';
// import 'package:e_library/modules/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
// import 'package:get/get.dart';
// import '../../modules/books_crean_example/presentation/screens/create_book_screen.dart';
// import '../../modules/settings/presentation/screens/settings_screen.dart';
import '../consts/app_assets.dart';
import '../consts/app_colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              padding: EdgeInsets.all(5.w),
              color: AppColors.darkBlue,
              child: SvgPicture.asset(AppSVGs.logo,color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_add),
            title: Text('Create Book'),
          //  onTap: ()=>Get.toNamed(CreateBookScreen.name),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: _logout,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            //onTap: ()=> Get.toNamed(SettingsScreen.name),
          ),
        ],
      ),
    );
  }

  void _logout()async{
    // await StorageHandler().removeToken();
    // Get.offAllNamed(LoginScreen.name);
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import 'package:newtes1/modules/provider/home/home-test1.dart';
import 'package:newtes1/modules/provider/home/myService-test1.dart';
import '../profile-provider/presentation/controller/show-provider-profile/sho-prof-provider-controller.dart';
import '../profile-provider/presentation/screens/profile-provider_Screen.dart';
import 'mainDrawer.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  static const name = '/mainScreen';
  static final page = GetPage(
    name: name,
    page: () => MainScreen(),
  );

  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  final List<Widget> _pages = [
      Hometest1(),
      MyServicesTest1(),
      ProviderProfile(),

  ];

  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
  }
  @override
  Widget build(BuildContext context) {

    // // Get.put(SubscriptionPaymentProviderController());
    // // Get.put(DepositProviderController());
    Get.put(ShowProfileProviderController());

    return AppScaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "SERVICES",
            style: TextStyle(
              color: AppColors.green,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body:ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier,
        builder: (context, _selectedIndex, _) {
          return _pages[_selectedIndex];
        },
      ),
      bottomNavigationBar: Container(
        height: 15.w, // Adjust height as needed
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan.shade900,
              Colors.cyan.shade800,
              Colors.cyan.shade800,
              Colors.cyan.shade600,
              AppColors.cyan.withOpacity(0.8),
              AppColors.cyan.withOpacity(0.3),
              AppColors.white.withAlpha(4),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ValueListenableBuilder<int>(
          valueListenable: _selectedIndexNotifier,
          builder: (context, _selectedIndex, _) {
            return
        BottomNavigationBar(
          backgroundColor: AppColors.cyan.withOpacity(0.5),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 26,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.white,
                size: 26,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 26,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.green,
          onTap: _onItemTapped,
        );
    },
  ),
      ),
    );
  }
}


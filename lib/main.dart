import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newtes1/modules/bank/customer-bank/store-account-user/presentation/screens/store-account-bnak-User-screen.dart';
import 'package:newtes1/modules/bank/customer-bank/user-deposit/presentation/screens/deposit-money-User-screen.dart';
import 'package:newtes1/modules/bank/provider-bank/provider-deposit/presentation/screens/deposit-money-Provider-screen.dart';
import 'package:newtes1/modules/bank/provider-bank/store-account-provider/presentation/screens/store-account-bnak-Provider-screen.dart';
import 'package:newtes1/modules/customer/notification/presentation/screens/notification-customer.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/screens/profile_Customer_Screen.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/screens/store-profile-User-screen.dart';
import 'core/consts/app_colors.dart';
import 'core/storage/storage_handler.dart';
import 'modules/customer/profile-Customer/presentation/screens/update_profile-user-screen.dart';
import 'modules/customer/profile-any-Provider-from-service-details/presentation/screens/profile-provider-fromDetails_Screen.dart';
import 'modules/customer/request-a-service-from-customer/presentation/screens/request-service-from-customer.dart';
import 'modules/customer/viewMyServices/presentation/screens/view-my-services.dart';

 main()  {
 // await StorageHandler.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: AppColors.fontOnLight.withOpacity(0.2),
          centerTitle: true,
          foregroundColor: AppColors.fontOnLight,
        ),
        //brightness: Brightness.dark
      ),
      //translations: AppTranslation(),
     // locale: StorageHandler().locale,
        initialRoute: ViewMyServices.name,
      getPages: [
        CustomerProfile.page,
        AnyProviderProfileFromServiceDetails.page,
       StoreeUserProfileScreen.page,
        Update_UserProfileScreen.page,
        ViewMyServices.page,
        StoreAccountUserScreen.page,
        StoreAccountProviderScreen.page,
        DepositProviderScreen.page,
        DepositUserScreen.page,
       // ServicePage.page,

        // LoginScreen.page,
        // RegisterScreen.page,
        // BookInfoScreen.page,
        // SettingsScreen.page,
        // SearchFilterScreen.page,
        // SearchResultScreen.page,
        // CreateBookScreen.page
      ],

    );
    //   MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home:ViewMyServices(),//CustomerRequesrService()//NotificationCustomer(),//AnyProviderProfileFromServiceDetails(),//ProviderDetailsMyRequestFromCustomer(),//ProviderAllMyRequestFromCustomer(),//ServicesDetailesAndActiveForProvider(),//CardItem(),////TESTT(),//ProviderServicesViewCallSec(),//CustomerProfile(),//ProviderProfile(), //const MyHomePage(title: 'Amal omar'),
    // );
  }
}

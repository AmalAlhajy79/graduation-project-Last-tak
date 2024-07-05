import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newtes1/modules/bank/customer-bank/bank-withdraw-user/presentation/screens/withdrawBank-money-User-screen.dart';
import 'package:newtes1/modules/bank/customer-bank/store-account-user/presentation/screens/store-account-bnak-User-screen.dart';
import 'package:newtes1/modules/bank/customer-bank/user-deposit/presentation/screens/deposit-money-User-screen.dart';
import 'package:newtes1/modules/bank/provider-bank/provider-deposit/presentation/screens/deposit-money-Provider-screen.dart';
import 'package:newtes1/modules/bank/provider-bank/store-account-provider/presentation/screens/store-account-bnak-Provider-screen.dart';
import 'package:newtes1/modules/customer/notification/presentation/screens/notification-customer.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/screens/profile_Customer_Screen.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/screens/store-profile-User-screen.dart';
import 'core/consts/app_colors.dart';
import 'core/storage/storage_handler.dart';
import 'modules/bank/customer-bank/transfer-funds-from-user-to-provider/presentation/screens/TransferFunds-User-screen.dart';
import 'modules/bank/provider-bank/subscription-payment-provider/presentation/screens/subscription-payment-Provider-screen.dart';
import 'modules/customer/profile-Customer/presentation/screens/update_profile-user-screen.dart';
import 'modules/customer/profile-any-Provider-from-service-details/presentation/screens/profile-provider-fromDetails_Screen.dart';
import 'modules/customer/request-a-service-from-customer/presentation/screens/Customer-SendRequest-Urgent-secreen.dart';
import 'modules/customer/viewMyServices/presentation/screens/view-my-services.dart';
import 'modules/provider/profile-provider/presentation/screens/profile-provider_Screen.dart';
import 'modules/provider/profile-provider/presentation/screens/store-profile-Provider-screen.dart';
import 'modules/provider/profile-provider/presentation/screens/update_profile-provider-screen.dart';
import 'modules/provider/provider-urgent-request-from-customer/provider-view-details-request-from-customer/presentation/screens/provider-detailes-request-from-customer.dart';
import 'modules/provider/provider-urgent-request-from-customer/view-All-urgent-request-provider(conf-prend-approve)/presentation/screens/provider-All-request-from-customer_screen.dart';

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
        initialRoute: CustomerSendRequestUrgent.name,
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
        WithdrawBankUserScreen.page,
        TransferFundsUserScreen.page,
        SubscriptionPaymentProviderScreen.page,
        ProviderAllUrgentRequestFromCustomerScreen.page,
        ProviderProfile.page,
        StoreProviderProfileScreen.page,
        ProviderDetailsMyRequestFromCustomer.page,
       Update_ProviderProfileScreen.page,
        CustomerSendRequestUrgent.page,


      ],

    );

  }
}

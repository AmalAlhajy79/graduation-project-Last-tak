class ApiConst {
  static const _baseUrl = 'http://192.168.43.31:8001/api';//'http://192.168.43.31:8001/api'; //'http://127.0.0.1:8001/api';
                                                         //'http://192.168.43.31:8004/api';
  static const userProfile = '$_baseUrl/profiles';
  static const storeuserProfile = '$userProfile';

  static String provider_showAllUrgentRequestPending ='$_baseUrl/call-response/urgent-requsets';

  static String provider_showAllUrgentRequestApproved ='$_baseUrl/call-response/approved-services';

  static String provider_showAllUrgentRequestConfirmed ='$_baseUrl/call-response/provider/confirmedservices';

  static String storeproviderProfile = '$_baseUrl/profiles/store';
  static String provider_showDetailsUrgentRequestPending(int id) =>'$_baseUrl/call-response/requsets/$id';

  static String destroyuserProfile(int id) => '$userProfile/$id';

  static String show_userProfile(int id) => '$userProfile/$id';

  static String updateuserProfile(int id) =>
      '$userProfile/$id'; //= '$_baseUrl/profiles/1';
  static String userShowMyServicesPending =
      '$_baseUrl/user/pending-cancelled-services';
  static String userShowMyServicesApproved = '$_baseUrl/user/approved-services';
  static String userShowMyServicesConfirmed =
      '$_baseUrl/user/confirmed-services';

  static String CancelReservationUserMyServices(int id, String reason) =>
      '$_baseUrl/reservations/$id/cancel?reason=$reason&status=cancelled';
  static const storeAccountUser = '$_baseUrl/bank-account-information';


  static String storbankusernew(int account_number,String account_holder_name,String bank_name,String branch_code,int user_id) =>
    '$_baseUrl/bank-account-information?account_number=$account_number&account_holder_name=$account_holder_name&bank_name=$bank_name&branch_code=$branch_code&user_id=$user_id';

  static String storbankProvidernew(int account_number, String account_holder_name, String bank_name, String branch_code) =>
      '$_baseUrl/service-provider/bank-account-information?account_number=$account_number&account_holder_name=$account_holder_name&bank_name=$bank_name&branch_code=$branch_code';

  static String depositProviderrnew(int amount) =>
      '$_baseUrl/provider-deposit?amount=$amount';

  static String depositUsernew(int user_id, int amount) =>
      '$_baseUrl/bank/deposit?user_id=$user_id&amount=$amount';

  static String withdrawBankUsernew(int user_id, int amount) =>
      '$_baseUrl/bank/withdraw?amount=$amount&user_id=$user_id';

  static String transferFundsBankUsernew(int user_id, int provider_id, int amount, int service_id) =>
      '$_baseUrl/transfer-funds?user_id=$user_id&provider_id=$provider_id&amount=$amount&service_id=$service_id';

  static String subscription_paymentProvidernew(String token, String email, String password) =>
      '$_baseUrl/subscription-payment?token=$token&email=j$email&password=$password';

  static String show_providerProfile(int i) =>'$_baseUrl/profiles/show/$i';

  static String updateproviderProfile(  int id, String name, String email,String address,String phone_number)
                         =>//'http://192.168.43.31:8001/api/profiles/update/9?name=sadu&email=el22sr0@gmail.com&address=Saydnaya, Rif Dimashq&phone_number=0907122276';
                             '$_baseUrl/profiles/update/$id?name=$name&email=$email&address=$address&phone_number=$phone_number';
     // /update/9?name=amal7&email=eliasal2300@gmail.com&address=Saydnaya, Rif Dimashq&phone_number=0937798276
      //'$_baseUrl/profiles/update/$i';

  static String destroyproviderProfile(int id) =>'$_baseUrl/profiles/destroy/$id';

  static String provider_showDetailsUrgentRequestApproved(int i) =>'$_baseUrl/call-response/requsets/$i';

  static String provider_showDetailsUrgentRequestConfirmed(int i) =>'$_baseUrl/call-response/requsets/$i';



  static String CancelReservationProviderMyServices(int id) => '$_baseUrl/refuse-request/$id';

  static String approveReservationProviderMyServices(int id, String approved) =>'$_baseUrl/accept-request/$id?status=$approved';

  static String deleteReservationFromProviderDetailsRequest(int id) => '$_baseUrl/refuse-request/$id';








//
  // static const login = '$_baseUrl/auth/login';
  //
  // static const register = '$_baseUrl/auth/register';
  //
  // static const _allBooks = '$_baseUrl/books';
  //
  // static const createBook = _allBooks;
  //
  // static const like = '$_baseUrl/likes';
  //
  // static String unlike(id) => '$_baseUrl/likes/$id';
  //
  // static const comment = '$_baseUrl/comments';
  //
  // static const categories = '$_baseUrl/categories';
  //
  // static String getAllBooks({String? title, int? categoryId}) =>
  //     '$_allBooks${_prams({'title': title, 'category_id': categoryId})}';
  //
  // static String _pram(String key, value) {
  //   if (value == null) return '';
  //   return '$key=$value';
  // }
  //
  // static String _prams(Map<String, dynamic> prams) {
  //   var filteredPrams = prams.map((key, value) => MapEntry(key, value));
  //   filteredPrams.removeWhere((key, value) => value == null);
  //   if (filteredPrams.isEmpty) return '';
  //
  //   List<String> keys = filteredPrams.keys.toList();
  //   String result = '?${keys.first}=${filteredPrams[keys.first]}';
  //   for (int i = 1; i < keys.length; i++) {
  //     result = '$result&${keys[i]}=${filteredPrams[keys[i]]}';
  //   }
  //   return result;
  // }
  //
  // static String getBookById(int id) => '$_allBooks/$id';
  //


}

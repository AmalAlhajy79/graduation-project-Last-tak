import 'package:get/get.dart';
import '../../../../../core/network/network_helper.dart';
import '../../data/models/Classification-model.dart';
import '../../data/models/ServiceTypes-model.dart';
import '../../data/models/available-provider-model.dart';
import '../../data/models/service-model.dart';

class ClassificationController extends GetxController {
 // final Dio _dio = Dio();
  final classifications = <Classification>[].obs;
  final serviceTypes = <ServiceType>[].obs;
  final Rx<Classification?> selectedClassification = Rx<Classification?>(null);
  final Rx<ServiceType?> selectedServiceType = Rx<ServiceType?>(null);
  var id_available_provider=0.obs;
  // final id_prov=0.obs;
  var data = <Data>[].obs;


  @override
  void onInit() {
    super.onInit();
    fetchClassifications();

  }

  Future<void> fetchClassifications() async {
    try {
      final response = await NetworkHelper().get('http://192.168.43.31:8001/api/user/service-classifications');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['service_classifications'];
        classifications.assignAll(data.map((json) => Classification.fromJson(json)));
      }
    } catch (e) {
      print('Error fetching classifications: $e');
    }
  }

  Future<void> fetchServiceTypes(int classificationId) async {
    try {

      final response = await NetworkHelper().get('http://192.168.43.31:8001/api/user/service/$classificationId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['services'];
        serviceTypes.assignAll(data.map((json) => ServiceType.fromJson(json['service_type'])));
        // fetchServices(serviceTypes[0].id);
        print("end function fetchServiceTypes");

        ///...................
      }
    } catch (e) {
      print('Error fetching service types: $e');
    }
  }


  void setSelectedClassification(Classification? classification) {
    selectedClassification.value = classification;
    if (classification != null) {
      fetchServiceTypes(classification.id);
    } else {
      serviceTypes.clear();
    }
    selectedServiceType.value = null;
  }

  void setSelectedServiceType(ServiceType? serviceType) {
    ServiceController serviceController=Get.put(ServiceController());
    selectedServiceType.value = serviceType;
    serviceController.fetchServices(serviceType!.id);
     selectClassificationAndSection();
  }



  Future<List<Data>> selectClassificationAndSection()async {
    if (selectedClassification.value == null || selectedServiceType.value == null) {
      Get.snackbar('خطأ', 'الرجاء اختيار التصنيف والقسم أولاً');
      return [];
    }

    final int classificationId = selectedClassification.value!.id;
    final int serviceTypeId = selectedServiceType.value!.id;
    print(".....classificationId.....to select");
    print(classificationId);
    print(".....serviceTypeId.....to select");
    print(serviceTypeId);
    try {
      final response = await NetworkHelper().post(
        'http://192.168.43.31:8001/api/call-response/get-providers?service_classification_id=$classificationId&service_type_id=$serviceTypeId',
        // queryParameters: {
        //   'service_classification_id': classificationId,
        //   'service_type_id': serviceTypeId,
        // },
      );

      if (response.statusCode == 200) {
        // هنا يمكنك معالجة الاستجابة كما تريد
        print('تم اختيار التصنيف و القسم');
        print('الاستجابة: ${response.data}');
        Get.snackbar('نجاح', 'تم اختيار التصنيف و القسم');
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");
       data=AvailableProviderModel.fromJson(jsonData).data.obs;
        return data;
      } else {
        print('فشل في إرسال الطلب: ${response.statusCode}');
        Get.snackbar('خطأ', 'فشل في اختيار التصنيف و القسم');
        return Future.error("error...............");
      }
    } catch (e) {
      print('خطأ في إرسال الطلب: $e');
      Get.snackbar('خطأ', 'حدث خطأ أثناء إرسال الطلب');
    }
    return [];
  }


  Future<void> sendUrgentRequestToProvider(String note,int id_prov) async {
    print("...............1............");
    final ServiceController serviceController = Get.find();
    print("...............2............");
    var provider_id =id_prov;//.value; //1;   // update this now.........
    final int service_id = serviceController.selectedService.value!.id;

    try {
      final response = await NetworkHelper().post(
        'http://192.168.43.31:8001/api/request-to-provider?provider_id=$provider_id&service_id=$service_id&note=$note',
      );

      if (response.statusCode == 201) {
        print('تم إرسال الطلب للمزود بنجاح');
        print('الاستجابة: ${response.data}');
        Get.snackbar('نجاح', 'تم إرسال الطلب للمزود بنجاح');
      } else {
        print('فشل في إرسال الطلب: ${response.statusCode}');
        Get.snackbar('خطأ', 'فشل في إرسال الطلب للمزود');
      }
    } catch (e) {
      print('خطأ في إرسال الطلب: $e');
      Get.snackbar('خطأ', 'حدث خطأ أثناء إرسال الطلب للمزود');
    }
  }

  Future<void> sendUrgentRequestTo_ALLProvider(String note) async {
    print("...............1............");
    // final ServiceController serviceController = Get.find();
    print("...............2............");
    // await selectClassificationAndSection();
    print("...............3............");

    try {
      final response = await NetworkHelper().post(
        'http://192.168.43.31:8001/api/request-to-all-provider?note=$note',
      );

      if (response.statusCode == 201) {
        print('تم إرسال الطلب لجميع المزود بنجاح');
        print('الاستجابة: ${response.data}');
        Get.snackbar('نجاح', 'تم إرسال الطلب لجميع المزود بنجاح');
      } else {
        print('فشل في إرسال الطلب: ${response.statusCode}');
        Get.snackbar('خطأ', 'فشل في إرسال الطلب لجميع المزود');
      }
    } catch (e) {
      print('خطأ في إرسال الطلب: $e');
      Get.snackbar('خطأ', 'حدث خطأ أثناء إرسال الطلب لجميع المزود');
    }
  }




}

class ServiceController extends GetxController {
  // ClassificationController classificationController=Get.put(ClassificationController());

  final services = <Service>[].obs;
  final Rx<Service?> selectedService = Rx<Service?>(null);

  @override
  void onInit() {
    super.onInit();
    // fetchServices(classificationController.selectedServiceType.value!.id);
  }

  Future<void> fetchServices(int ServiceTypesId) async {
    try {
      final response = await NetworkHelper().get('http://192.168.43.31:8001/api/user/service/$ServiceTypesId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['services'];
        services.assignAll(data.map((json) => Service.fromJson(json)).toList());
      }
    } catch (e) {
      print('Error fetching services: $e');
    }
  }

  void setSelectedService(Service? service) {
    selectedService.value = service;
    if (service != null) {
      print("Service ID: ${service.id}, Name: ${service.name}");
    }
  }
}

// class CustomerSendRequestUrgentController extends GetxController {
//
//
//   final TextEditingController user_id_Controller = TextEditingController();
//   final TextEditingController account_numberController = TextEditingController();
//   final TextEditingController bank_nameController = TextEditingController();
//   final TextEditingController account_holder_nameController = TextEditingController();
//   final TextEditingController branch_codeController = TextEditingController();
//
//   String? _path;
//
//   void setPath(String? newPath) {
//     _path = newPath;
//   }
//
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   DataState<void> _dataState = DataState<void>();
//
//   DataStatus get status => _dataState.status;
//   // Future<void> storeAccountProviderBank(int account_number, String account_holder_name,String bank_name,String branch_code,int provider_id) async {
//   //   await StoreAccountProviderDataSource().storbankProvidernew(account_number, account_holder_name, bank_name, branch_code, provider_id);
//   // }
//
//   @override
//   void dispose() {
//     bank_nameController.dispose();
//     user_id_Controller.dispose();
//     account_holder_nameController.dispose();
//     account_numberController.dispose();
//     branch_codeController.dispose();
//     super.dispose();
//   }
// }

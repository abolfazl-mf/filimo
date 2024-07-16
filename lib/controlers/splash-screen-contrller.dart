import 'package:get/get.dart';
import 'package:filimo/controlers/splash-screen-contrller.dart';

// class SplashScreenController extends GetxController {
//   final RxString _connectionStatus = '-1'.obs;
//   final Rx<Connectivity> _connectivity = Connectivity().obs;
//   Rx<ConnectivityResult> result = ConnectivityResult.none.obs;
//
//   Future<void> initConnectivity() async {
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       result.value = await _connectivity.value.checkConnectivity();
//     } on PlatformException catch (e) {
//       print(e.toString());
//     }
//
//     return _updateConnectionStatus(result.value);
//   }
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     switch (result) {
//       case ConnectivityResult.wifi:
//         _connectionStatus.value = 'wifi net';
//         break;
//       case ConnectivityResult.mobile:
//         _connectionStatus.value = 'mobile net';
//         break;
//       case ConnectivityResult.none:
//         _connectionStatus.value = '-1';
//         Get.snackbar(
//             '',
//             '',
//             titleText: const Text(
//               'اینترنت متصل نیست',
//               style: TextStyle(fontSize: 25, color: Colors.deepOrange,fontWeight: FontWeight.bold),
//             ),
//             messageText: const Text(
//               'لطفا داده تلفن همراه یا wifi را روشن کنید',
//               style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold,fontSize: 20),
//             ),
//             snackPosition: SnackPosition.TOP,
//             snackStyle: SnackStyle.GROUNDED,
//             icon: const Icon(Icons.error)
//         );
//         break;
//       default:
//         _connectionStatus.value = 'failed to get connectivity';
//         break;
//     }
//     print(_connectionStatus);
//     if (_connectionStatus.value != '-1') {
//       Future.delayed(const Duration(seconds: 4), () {
//         Get.to(const HomeScreen(),
//             transition: Transition.downToUp,
//             duration: const Duration(seconds: 1));
//       });
//     }
//   }
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     initConnectivity();
//     ever(result, (_) {
//       _connectivity.value.onConnectivityChanged.listen(_updateConnectionStatus);
//     });
//   }
// }
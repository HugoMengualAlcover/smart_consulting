import 'package:smartconsulting/presentation/receipt_screen/receipt_screen.dart';
import 'package:smartconsulting/presentation/receipt_screen/binding/receipt_binding.dart';
import 'package:smartconsulting/presentation/crear_factura_one_screen/crear_factura_one_screen.dart';
import 'package:smartconsulting/presentation/crear_factura_one_screen/binding/crear_factura_one_binding.dart';
import 'package:smartconsulting/presentation/crear_factura_two_screen/crear_factura_two_screen.dart';
import 'package:smartconsulting/presentation/crear_factura_two_screen/binding/crear_factura_two_binding.dart';
import 'package:smartconsulting/presentation/crear_factura_three_screen/crear_factura_three_screen.dart';
import 'package:smartconsulting/presentation/crear_factura_three_screen/binding/crear_factura_three_binding.dart';
import 'package:smartconsulting/presentation/login_screen/login_screen.dart';
import 'package:smartconsulting/presentation/login_screen/binding/login_binding.dart';
import 'package:smartconsulting/presentation/splash_screen/splash_screen.dart';
import 'package:smartconsulting/presentation/splash_screen/binding/splash_binding.dart';
import 'package:smartconsulting/presentation/login_register_screen/login_register_screen.dart';
import 'package:smartconsulting/presentation/login_register_screen/binding/login_register_binding.dart';
import 'package:smartconsulting/presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'package:smartconsulting/presentation/forgot_password_type_otp_screen/binding/forgot_password_type_otp_binding.dart';
import 'package:smartconsulting/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:smartconsulting/presentation/create_new_password_screen/binding/create_new_password_binding.dart';
import 'package:smartconsulting/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:smartconsulting/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:smartconsulting/presentation/scanning_screen/scanning_screen.dart';
import 'package:smartconsulting/presentation/scanning_screen/binding/scanning_binding.dart';
import 'package:smartconsulting/presentation/register_screen/register_screen.dart';
import 'package:smartconsulting/presentation/register_screen/binding/register_binding.dart';
import 'package:smartconsulting/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:smartconsulting/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String receiptScreen = '/receipt_screen';

  static const String crearFacturaOneScreen = '/crear_factura_one_screen';

  static const String crearFacturaTwoScreen = '/crear_factura_two_screen';

  static const String crearFacturaThreeScreen = '/crear_factura_three_screen';

  static const String loginScreen = '/login_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginRegisterScreen = '/login_register_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String scanningScreen = '/scanning_screen';

  static const String registerScreen = '/register_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: receiptScreen,
      page: () => ReceiptScreen(),
      bindings: [
        ReceiptBinding(),
      ],
    ),
    GetPage(
      name: crearFacturaOneScreen,
      page: () => CrearFacturaOneScreen(),
      bindings: [
        CrearFacturaOneBinding(),
      ],
    ),
    GetPage(
      name: crearFacturaTwoScreen,
      page: () => CrearFacturaTwoScreen(
        invoice: Get.arguments,
      ),
      bindings: [
        CrearFacturaTwoBinding(),
      ],
    ),
    GetPage(
      name: crearFacturaThreeScreen,
      page: () => CrearFacturaThreeScreen(
        invoice: Get.arguments,
      ),
      bindings: [
        CrearFacturaThreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginRegisterScreen,
      page: () => LoginRegisterScreen(),
      bindings: [
        LoginRegisterBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordTypeOtpScreen,
      page: () => ForgotPasswordTypeOtpScreen(),
      bindings: [
        ForgotPasswordTypeOtpBinding(),
      ],
    ),
    GetPage(
      name: createNewPasswordScreen,
      page: () => CreateNewPasswordScreen(),
      bindings: [
        CreateNewPasswordBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: scanningScreen,
      page: () => ScanningScreen(),
      bindings: [
        ScanningBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}

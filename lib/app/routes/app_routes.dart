import 'package:get/get.dart';
import 'package:reez_and_geez1/app/modules/home/views/catalog_page.dart';
import 'package:reez_and_geez1/app/modules/home/views/custom_catalog.dart';
import 'package:reez_and_geez1/app/modules/home/views/edit_faq.dart';
import 'package:reez_and_geez1/app/modules/home/views/edit_porduct_page.dart';
import 'package:reez_and_geez1/app/modules/home/views/faq_page.dart';
import 'package:reez_and_geez1/app/modules/home/views/order_form_page.dart';
import 'package:reez_and_geez1/app/modules/home/views/order_page.dart';
import 'package:reez_and_geez1/app/modules/home/views/print_only_catalog.dart';
import '../modules/home/views/landing_page.dart';
import '../modules/home/views/admin_page.dart';
import '../modules/home/views/customer_page.dart';
import '../modules/home/views/login_page_admin.dart';

class AppRoutes {
  static const initial = '/';

  static final routes = [
    GetPage(
      name: '/',
      page: () => LandingPage(),
    ),
    GetPage(
      name: '/admin',
      page: () => AdminPage(),
    ),
    GetPage(
      name: '/customer',
      page: () => CustomerPage(),
    ),
    GetPage(
      name: '/login_page',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/catalog',
      page: () => CatalogPage(),
    ),
    GetPage(
      name:'/printonly',
      page: () => PrintOnlyCatalog(),
    ),
    GetPage(
      name: '/custom',
      page: () => CustomCatalog(),
    ),
    GetPage(
      name: '/adminpage',
      page: () => AdminPage(),
    ),
    GetPage(
      name: '/editproduct',
      page: () => EditProdukPage(),
    ),
    GetPage(
      name: '/orderformpage',
      page: () => OrderFormPage(),
    ),
    GetPage(
      name: '/orderpage',
      page: () => OrderPage(),
    ),
    GetPage(
      name: '/faqpage',
      page: () => FaqPage(),
    ),
    GetPage(
      name: '/editfaq', 
      page: () => EditFaqPage(),
    ),
  ];
}

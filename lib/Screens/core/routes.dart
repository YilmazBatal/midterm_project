import 'package:go_router/go_router.dart';
import 'package:midterm_project/Screens/client/create_new_password.dart';
import 'package:midterm_project/Screens/client/reset_password.dart';
import 'package:midterm_project/Screens/client/sign_in.dart';
import 'package:midterm_project/Screens/client/sign_up.dart';
import 'package:midterm_project/Screens/client/welcome.dart';
import 'package:midterm_project/Screens/core/error.dart';
import 'package:midterm_project/Screens/core/loader.dart';
import 'package:midterm_project/Screens/core/settings.dart';
import 'package:midterm_project/Screens/product/address.dart';
import 'package:midterm_project/Screens/product/cart.dart';
import 'package:midterm_project/Screens/product/fovorites.dart';
import 'package:midterm_project/Screens/product/home.dart';
import 'package:midterm_project/Screens/product/order_complete.dart';
import 'package:midterm_project/Screens/product/order_details.dart';
import 'package:midterm_project/Screens/product/payment.dart';
import 'package:midterm_project/Screens/product/search.dart';

import '../product/previous_orders.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/resetpassword',
      builder: (context, state) => const ResetPasswordPage(),
    ),
    GoRoute(
      path: '/createnewpassword',
      builder: (context, state) => const CreateNewPasswordPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: '/address',
      builder: (context, state) => const AddressPage(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: '/ordercomplete',
      builder: (context, state) => const OrderCompletePage(),
    ),
    GoRoute(
      path: '/orderdetails',
      builder: (context, state) => const OrderDetailsPage(),
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentPage(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
      path: '/previousorders',
      builder: (context, state) => const PreviousOrders(),
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const Favorites(),
    ),
  ],
);

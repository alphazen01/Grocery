import 'package:demo/controller/home_controller.dart';
import 'package:demo/models/product_model.dart';
import 'package:demo/screens/profile/account.dart';
import 'package:demo/sign_up.dart';
import 'package:demo/widgets/bottom_navigation.dart';
import 'package:demo/widgets/details_screen.dart';
import 'package:demo/screens/products/home.dart';
import 'package:demo/screens/welcome/login.dart';
import 'package:demo/screens/profile/number.dart';
import 'package:demo/screens/profile/otp.dart';
import 'package:demo/screens/products/beverage.dart';
import 'package:demo/screens/products/cart_screen.dart';
import 'package:demo/screens/products/filter.dart';
import 'package:demo/screens/products/find_products.dart';
import 'package:demo/screens/products/search.dart';
import 'package:demo/screens/welcome/sign_in.dart';
import 'package:demo/screens/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main()async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.blue, // status bar color
  ));
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider<HomeController>(
          create: (BuildContext context) {
            return HomeController();
          })
          
      ],
      
    
      child: CustomApp()
      );
  }
}

class CustomApp extends StatelessWidget {
  const CustomApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CartScreen()
      // home: FavouriteScreen(),
      home: NavigationScreen(),
      // home: WelcomeScreen(),
      // home: FilterScreen(),
      // home: FindProducts(),
      // home: Beverages(),
      // home: HomeScreen(),
      // home: SearchScreen(),
      // home: LogInScreen(),
      // home: OtpScreen(),
      // home: AccountScreen(),
      // home: SignInScreen(),
      // home: NumberScreen(),
      // home: SignUp(),
      // home: FilterScreen(),
      // home: HomeScreen()
      
    );
  }
}


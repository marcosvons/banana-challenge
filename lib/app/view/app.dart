import 'package:auth/auth.dart';
import 'package:banana_challenge/core/injector/injector.dart';
import 'package:banana_challenge/core/utils/theme_manager.dart';
import 'package:banana_challenge/core/widgets/splash.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/products.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              AuthBloc(authRepository: getIt<IAuthRepository>()),
        ),
        BlocProvider<ProductsBloc>(
          create: (context) =>
              ProductsBloc(productRepository: getIt<IProductRepository>()),
        ),
      ],
      child: MaterialApp(
        theme: customTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const BananaSplash(),
      ),
    );
  }
}

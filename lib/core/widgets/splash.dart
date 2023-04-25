import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class BananaSplash extends StatelessWidget {
  const BananaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => AnimatedSplashScreen(
        splash: Lottie.asset(Assets.bananaAnimation),
        nextScreen: state.maybeWhen(
          authenticated: (user) {
            context
                .read<ProductsBloc>()
                .add(const ProductsEvent.loadProducts());
            return const ProductsView();
          },
          orElse: () => const LoginView(),
        ),
        duration: 5000,
        backgroundColor: context.colorScheme.background,
        splashIconSize: context.height * 0.5,
      ),
    );
  }
}

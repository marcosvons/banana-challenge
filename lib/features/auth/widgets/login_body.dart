import 'package:banana_challenge/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) => ScaffoldMessenger.of(
            context,
          ).showSnackBar(
            const SnackBar(
              content: Text('Authenticated'),
            ),
          ),
          orElse: () => ScaffoldMessenger.of(
            context,
          ).showSnackBar(
            const SnackBar(
              content: Text('Authenticated'),
            ),
          ),
        );
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                LoginRequested(
                                  email: state.email!,
                                  password: state.password!,
                                ),
                              );
                        },
                        child: const Text('Login'));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

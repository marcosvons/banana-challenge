import 'package:banana_challenge/core/core.dart';
import 'package:banana_challenge/features/features.dart';
import 'package:banana_challenge/features/products/views/products_page.dart';
import 'package:banana_challenge/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) {
            context.read<ProductsBloc>().add(const ProductsEvent.loadProducts());
            Navigator.of(context).push<void>(ProductsView.route());
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.large,
                horizontal: Sizes.xxLarge,
              ),
              child: SizedBox(
                height: context.height * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.welcome,
                      style: context.textTheme.headlineLarge,
                    ),
                    const Spacer(),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: context.l10n.email,
                      ),
                      style: context.textTheme.bodyLarge,
                      onChanged: (value) =>
                          context.read<LoginCubit>().emailChanged(value),
                    ),
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        return TextFormField(
                          style: context.textTheme.bodyLarge,
                          decoration: InputDecoration(
                            labelText: context.l10n.password,
                            suffixIcon: IconButton(
                              icon: Icon(
                                state.showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () => context
                                  .read<LoginCubit>()
                                  .changePasswordVisibility(),
                            ),
                          ),
                          obscureText: !state.showPassword,
                          onChanged: (value) =>
                              context.read<LoginCubit>().passwordChanged(value),
                        );
                      },
                    ),
                    const SizedBox(
                      height: Sizes.xxLarge,
                    ),
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        return SizedBox(
                          height: context.height * 0.1,
                          width: context.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (state.email != '' && state.password != '') {
                                context.read<AuthBloc>().add(
                                      LoginRequested(
                                        email: state.email!,
                                        password: state.password!,
                                      ),
                                    );
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  state.email == '' || state.password == ''
                                      ? MaterialStateProperty.all(
                                          context.colorScheme.surface,
                                        )
                                      : MaterialStateProperty.all(
                                          context.colorScheme.primary,
                                        ),
                            ),
                            child: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () => Text(context.l10n.login),
                                  authenticating: () => SizedBox(
                                    height: context.height * 0.05,
                                    width: context.height * 0.05,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: context.colorScheme.onPrimary,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox.shrink(),
                          unauthenticated: (message) {
                            return Padding(
                              padding: const EdgeInsets.only(top: Sizes.medium),
                              child: Text(
                                message != null
                                    ? message.failureMessage(context)
                                    : '',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  color: context.colorScheme.error,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

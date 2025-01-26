import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';
import 'package:tupa_web/src/presentation/auth/widgets/login_buttons.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
    required this.onSignUp,
  });
  final VoidCallback onSignUp;
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String email = '';
  String password = '';
  bool obscurePassword = true;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: SizedBox(
          width: 440,
          child: Column(
            children: [
              Text(
                'Entrar',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.offBlack,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
              ),
              const SizedBox(
                height: 92,
              ),
              TextFormField(
                onChanged: (value) => setState(() {
                  email = value;
                }),
                decoration: BoxDecorations.inputDecoration(
                  'E-mail',
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                onChanged: (value) => password = value,
                obscureText: obscurePassword,
                onFieldSubmitted: (_) async {
                  await loginUser(context);
                },
                decoration: BoxDecorations.inputDecoration(
                  'Senha',
                ).copyWith(
                  suffixIcon: IconButton(
                    splashRadius: 4,
                    icon: Icon(
                      obscurePassword ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () =>
                        setState(() => obscurePassword = !obscurePassword),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  isSaved = !isSaved;
                }),
                child: Row(
                  children: [
                    SizedBox(
                      height: 48,
                      width: 24,
                      child: Checkbox(
                        fillColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return AppColors.blue400;
                          }
                          return Colors.white;
                        }),
                        checkColor: AppColors.offWhite,
                        value: isSaved,
                        onChanged: (bool? value) {
                          setState(() {
                            isSaved = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text('Manter conectado.',
                        style: TextStyles.body.copyWith(color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              LoginButtons(
                  onSignIn: () async {
                    await loginUser(context);
                  },
                  onSignUp: widget.onSignUp),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginUser(BuildContext context) async {
    final result = await context
        .read<AuthCubit>()
        .signIn(email.toLowerCase().trim(), password, isSaved);
    result.fold(
      (failure) {
        if (failure is InvalidCredentials) {
          FlashHelper.errorBar(
            context,
            message: "E-mail ou senha invalido",
          );
        }
      },
      (success) {},
    );
  }
}

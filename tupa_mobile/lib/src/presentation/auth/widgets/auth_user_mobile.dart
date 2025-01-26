import 'package:flutter/material.dart';
import 'package:tupa_application_core/tupa_application_core.dart';
import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class AuthUserMobile extends StatefulWidget {
  const AuthUserMobile({super.key});

  @override
  State<AuthUserMobile> createState() => _AuthUserMobileState();
}

class _AuthUserMobileState extends State<AuthUserMobile> {
  // final email = useState('');
  // final password = useState('');
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  bool obscurePassword = true;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailTextController,
          onChanged: (value) => setState(() {
            emailTextController.text = value;
          }),
          decoration: BoxDecorations.inputDecoration(
            'E-mail',
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 24),
        TextFormField(
          onChanged: (value) => setState(() {
            passwordTextController.text = value;
          }),
          controller: passwordTextController,
          obscureText: obscurePassword,
          onFieldSubmitted: (_) async {
            await loginUser(context);

            passwordTextController.text = '';
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
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () => setState(() {
            isSaved = !isSaved;
          }),
          child: Row(
            children: [
              SizedBox(
                height: 24,
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
        const SizedBox(height: 24),
        SizedBox(
          height: 48,
          width: double.infinity,
          child: WebElevatedRoundedButton(
            color: AppColors.mediumTurquoise,
            onTap: () async {
              await loginUser(context);
            },
            text: 'ENTRAR',
          ),
        ),
      ],
    );
  }

  Future<void> loginUser(BuildContext context) async {
    final result = await context
        .read<AuthCubit>()
        .signIn(emailTextController.text, passwordTextController.text, isSaved);
    result.fold(
      (failure) {
        if (failure is InvalidCredentials) {
          FlashHelper.errorBar(
            context,
            message: "E-mail ou senha invalido",
          );
        }
      },
      (success) {
        passwordTextController.clear();
      },
    );
  }
}

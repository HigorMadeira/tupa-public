import 'package:flutter/material.dart';
import 'package:tupa_domain/tupa_domain.dart';
import 'package:tupa_ui_core/tupa_ui_core.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
    required this.onLogin,
  });

  final VoidCallback onLogin;

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String email = '';
  String name = '';
  String password = '';
  bool obscurePassword = true;
  String confirmPassword = '';
  bool obscureConfirmPassword = true;
  AllowedUser? preUser;
  bool validate = false;
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
                'Criar conta',
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
              if (preUser == null)
                Padding(
                  key: const ValueKey('email'),
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      email = value;
                    }),
                    decoration: BoxDecorations.inputDecoration(
                      'E-mail pré cadastrado',
                    ),
                  ),
                ),
              if (preUser != null) ...[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TextFormField(
                    initialValue: name,
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                    decoration: BoxDecorations.inputDecoration(
                      'Nome',
                    ).copyWith(
                      errorText:
                          validate && name.isEmpty ? 'Campo obrigatório' : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      password = value;
                    }),
                    obscureText: obscurePassword,
                    decoration: BoxDecorations.inputDecoration(
                      'Senha',
                    ).copyWith(
                      errorText:
                          validate && name.isEmpty ? 'Campo obrigatório' : null,
                      suffixIcon: IconButton(
                        splashRadius: 4,
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () => setState(() {
                          obscurePassword = !obscurePassword;
                        }),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      confirmPassword = value;
                    }),
                    obscureText: obscureConfirmPassword,
                    decoration: BoxDecorations.inputDecoration(
                      'Confirmar senha',
                    ).copyWith(
                      errorText: (validate &&
                              confirmPassword.isNotEmpty &&
                              confirmPassword != password)
                          ? 'As senhas não estão iguais'
                          : null,
                      suffixIcon: IconButton(
                        splashRadius: 4,
                        icon: Icon(
                          obscureConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () => setState(() {
                          obscureConfirmPassword = !obscureConfirmPassword;
                        }),
                      ),
                    ),
                  ),
                ),
              ],
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: WebOutlinedRoundedButton(
                        borderRadius: 8,
                        onTap: widget.onLogin,
                        text: 'Voltar para o login',
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: WebElevatedRoundedButton(
                      color: AppColors.mediumTurquoise,
                      onTap: () async {
                        // if (preUser == null) {
                        //   EasyLoading.show(
                        //       status: 'Verificando usuário...',
                        //       maskType: EasyLoadingMaskType.black);

                        //   final user = await context
                        //       .read<AllowedUserFormCubit>()
                        //       .checkAllowedUser(email);
                        //   EasyLoading.dismiss();
                        //   if (user == null) {
                        //     FlashHelper.errorBar(
                        //       context,
                        //       message:
                        //           "E-mail não encontrado, por favor contate o suporte.",
                        //     );
                        //   } else {
                        //     setState(() {
                        //       preUser = user;
                        //       name = user.name ?? '';
                        //     });
                        //   }
                        // } else {
                        //   setState(() {
                        //     validate = true;
                        //   });

                        //   if (name.isNotEmpty &&
                        //       password.isNotEmpty &&
                        //       confirmPassword.isNotEmpty &&
                        //       password == confirmPassword) {
                        //     final result = await context.read<AuthCubit>().signUp(
                        //           preUser!.copyWith(name: name),
                        //           password,
                        //         );
                        //     result.fold(
                        //       (failure) {
                        //         if (failure is UserAlreadyExists) {
                        //           FlashHelper.errorBar(
                        //             context,
                        //             message: "Este e-mail já existe.",
                        //           );
                        //         }
                        //       },
                        //       (success) {
                        //         FlashHelper.successBar(
                        //           context,
                        //           message: "Conta criada com sucesso",
                        //         );
                        //       },
                        //     );
                        //   }
                        // }
                      },
                      text: 'Cadastrar',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

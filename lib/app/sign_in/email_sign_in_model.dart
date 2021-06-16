enum EmailSignInFormType { signIn, register }

class EmailSignInModel {
  EmailSignInModel({
    this.email = '',
    this.password ='',
    this.formType = EmailSignInFormType.signIn,
    this.isLoading = false,
    this.submitted =false,
  });

  final String email;
  final String password;
  final EmailSignInFormType formType;
  final bool isLoading;
  final bool submitted;

  //Making a copy
  EmailSignInModel copyWith({
    String email,
    String password,
    EmailSignInFormType formType,
    bool isLoading,
    bool submitted,
}) {
    return EmailSignInModel(
      // Eg. model.copyWith(email:email);
      // if the argument pass in is not null it will use the email (the value on the left).
      // if the argument is null, it will use this.email which will be the default declaration (the value on the right)
      email: email?? this.email,
      password: password ?? this.password,
      formType: formType?? this.formType,
      isLoading: isLoading ?? this.isLoading,
      submitted: submitted ?? this.submitted,
    );
  }

}

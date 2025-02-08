 class SignUpState {}

final class SignUpInitial extends SignUpState {}
final class SignUpLoading extends SignUpState {}
final class SignUpSuccess extends SignUpState {}
final class SignUpError extends SignUpState {
  final String error;
   SignUpError( this.error );
}

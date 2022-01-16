abstract class Failure {
  String? code;
}

class UnImplementedFailure extends Failure {
  final code = "An Error occurred !";
}

class NetworkException extends Failure {
  final code = "Network connection error !";
}

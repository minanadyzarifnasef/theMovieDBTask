class FailureModel {
  final String message;
  final int? statusCode;

  FailureModel(this.message, {this.statusCode});

  @override
  String toString() => message;
}
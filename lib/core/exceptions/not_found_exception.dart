class NotFoundException implements Exception {
  final String message;
  const NotFoundException({
    required this.message,
  });
}

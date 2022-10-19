class MockApi {
  String? dateAndTime;

  Future<String> getDateAndTime() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => DateTime.now().toIso8601String(),
    ).then((time) {
      dateAndTime = time;
      return time;
    });
  }
}

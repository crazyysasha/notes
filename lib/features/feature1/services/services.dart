abstract class DataServiceInterface<T> {
  Future<List<T>> get();
}

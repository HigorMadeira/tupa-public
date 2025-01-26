class ApplicationUtils {
  static List<T> getUpdatedLocalList<T>(dynamic object, List<T> list) {
    final objectIndex = list.indexWhere((dynamic t) => t.id == object.id);
    if (objectIndex == -1) {
      return List<T>.from(list)..add(object as T);
    }

    final newList = List<T>.from(list);

    newList[objectIndex] = object as T;
    return newList;
  }

  static List<T> deleteObjectFromLocalList<T>(String id, List<T> list) {
    final objectIndex = list.indexWhere((dynamic t) => t.id == id);

    final newList = List.from(list).removeAt(objectIndex);

    return newList;
  }

  static List<T> deleteObjectFromLocalListIntId<T>(int id, List<T> list) {
    final objectIndex = list.indexWhere((dynamic t) => t.id == id);

    final newList = List<T>.from(list);

    newList.removeAt(objectIndex);

    return newList;
  }
}

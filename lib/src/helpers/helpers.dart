shift(List l) {
  if (l.length >= 1) {
    var first = l.first;
    l.removeAt(0);
    return first;
  }
  return null;
}

Map merge(Map? obj, defaults) {
  if (obj == null) {
    obj = new Map();
  }
  defaults.forEach((key, val) => obj!.putIfAbsent(key, () => val));
  return obj;
}
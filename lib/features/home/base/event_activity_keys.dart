enum EventActivityKeys {
  rank,
  particiants,
  totalsteps;

  String arName() {
    switch (this) {
      case rank:
        return 'المركز';
      case particiants:
        return 'مشاركين';
      case totalsteps:
        return 'خطوات';
    }
  }
}

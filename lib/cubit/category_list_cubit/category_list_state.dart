class CategorylistState {}

class Categorylistinitial extends CategorylistState {}

class Categorylistfailure extends CategorylistState {
  String errormsg;
  Categorylistfailure({required this.errormsg});
}

class Categorylistsuccess extends CategorylistState {

  List<String> categories;
  Categorylistsuccess({required this.categories});
}

class Categorylistloading extends CategorylistState {}

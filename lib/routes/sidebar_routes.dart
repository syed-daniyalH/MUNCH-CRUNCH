import 'package:project_restaurant/services/SharedPref_Helper.dart';
import 'package:project_restaurant/classes/route.dart' as _MyAppRoute;
import 'routes.dart';

Future<List<_MyAppRoute.Router>> getRoleBasedRoutes() async {
  final pref = SharedPref();
  await pref.init();
  String role = pref.getValue("ROLE") ?? "";

  return routeArr
    .where((element) => element.allowedRoles!.contains(role)).toList();
}
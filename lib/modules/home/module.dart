import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_heylolTask/modules/home/home_page/controller.dart';
import 'package:web_heylolTask/modules/home/home_page/main.dart';

class HomeModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];
}

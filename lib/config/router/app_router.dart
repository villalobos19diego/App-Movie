import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';
//aca definimos el tipo, de moneda
//lo que tratamos en esta clase es evitar de poner varios ceros el cual va retornar moneda,simbolo,moneda las cuales las definimos en esta clase
//este formato lo podemos utilizar para cuando vamos a usar o tranferir dinero
//formato de numero ya definido,



final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
]);
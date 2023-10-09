import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomButtomNavegation(),
    );
  }
}



class _HomeView extends ConsumerStatefulElement{

const _HomeView(),


@override
_HomeViewState createState()  => _HomeViewState();





}


 class  _HomeViewState extends  ConsumerState<_HomeView>
 {
  void initialState(){
    super.initState();



    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
        ref.read(popularMoviesProvider.notifier).loadNextPage();
            ref.read(topRatedMoviesProvider.notifier).loadNextPage();
                ref.read(upcomingMoviesProvider.notifier).loadNextPage();


   }
 }
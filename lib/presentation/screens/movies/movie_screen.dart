/*class MoviScreen extends ConsumerStatefulWidget {
  static const name = 'movie-screen';

  late final String movieId;


   const MovieScreen({super.key, required this.movieId});


    @override  MovieScreenState createState()  =>  MovieScreenState();
}

 class MovieScreenState extends ConsumerState<MoviScreen>{



  @override
  void initState(){

    super.initState();

    ref.read(movieInfoProvider.notifier).loadMovie(widget.movieId);
     ref.read(actorsByMovieProvider.notifier).loadMovie(widget.movieId);


  }


  @override

  Widget build(BuildContext context) {


    final Movie? movie = ref.watch(movieInfoProvider)¨[widget.movieId];

    if(movie == null){
return const Scaffold(body: Center(child: CircularProgressIndicator(strokeWidth: 2)));

    }

     return Scaffold(body: CustomScrollView(
      physics:  const ClampingScrollPhysics(),
      slivers: [
        _CustomScrollPhysics(),
          SliverList(delegate: SliverChildBuilderDelegate((context , index) => _MovieDetails(movie: movie),
          
          childCount:1))
      ]
     ));
    
  }
 }


class _MovieDetails extends  StatelessWidget {
  const _MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
  
  final Size = MediaQuery.of(context).size;
  final textStyle = Theme.of(context).textTheme;




    return Column(

      crossAxisAlignment: CrossAxisAlingment.start,
      children:[
        Padding(padding: EdgeInsets.all(8),
        
        child: Row(crossAxisAlignment: CrossAxisAlingment.start, children: [  ClipRRect(borderRadius.circular(20),
        
        
        )]))
      ]
    );
  }
}
*/
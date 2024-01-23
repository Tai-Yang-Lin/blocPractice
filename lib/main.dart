import 'package:bloc_tyler/WidgetClass.dart';
import 'package:flutter/material.dart';
import 'Bloc/blocModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Bloc/dataClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> PhotoBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b0,
      body: Center(
        child: col([
          h3txt("JSON Placeholder",c: w0),
          space(30),
          btn(bodytxt_M("Request API",c: w0),()=> context.goto(ImagePage()))
        ],main: MainAxisAlignment.center),
      )
    );
  }
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  late PhotoBloc photoBloc;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    photoBloc = BlocProvider.of<PhotoBloc>(context);
    photoBloc.fetchPhotos();

  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: b0,
      body: BlocBuilder<PhotoBloc, List<Photo>>(
        builder: (context, photos) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: photos.length,
            itemBuilder: (context, index) {
              final photo = photos[index];
              return PhotoCell(photo: photo);
            },
          );
        },
      ),
    );
  }
}


class PhotoCell extends StatelessWidget {
  final Photo photo;

  PhotoCell({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.width/4,
      //width: MediaQuery.of(context).size.width/4,
      child: sta([
        Image.network(
          photo.thumbnailUrl,
          fit: BoxFit.fill,
        ),
        col([
          Titletxt_M("${photo.id}",c: w0),
          Container(child: padd(bodytxt_S("${photo.title}",c: w0))),
        ],main: MainAxisAlignment.center),
      ]),
    );
  }
}
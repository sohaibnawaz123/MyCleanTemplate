import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:{{app.snakeCase()}}/core/resource/app_color.dart';
import 'package:{{app.snakeCase()}}/modules/{{module.snakeCase()}}/presentation/blocs/{{name.snakeCase()}}/{{name.snakeCase()}}_bloc.dart';


class {{name.pascalCase()}}View extends StatefulWidget {
  final {{name.pascalCase()}}Bloc bloc;
  const {{name.pascalCase()}}View({
    super.key,
    required this.bloc,
  });

  @override
  State<{{name.pascalCase()}}View> createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends State<{{name.pascalCase()}}View> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.base,

      
    );
  
  }
}

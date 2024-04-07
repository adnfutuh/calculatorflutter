import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/module/calculator/state/cubit/theme_cubit.dart';

class Header extends StatelessWidget {
  const Header({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: false);
    IconData iconLight = Icons.wb_sunny;
    IconData iconDark = Icons.nights_stay;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 12),
          child: Text(
            'Theme: ${theme.isDark ? 'Dark' : 'Light'}',
          ),
        ),
        IconButton(
          onPressed: () {
            theme.changeTheme();
          },
          icon: Icon(theme.isDark ? iconDark : iconLight),
        ),
      ],
    );
  }
}

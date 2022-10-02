import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sozzle/src/theme/theme.dart';
import 'package:sozzle/src/user_stats/user_stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String path = 'home';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    state.primaryColor,
                    state.secondaryColor,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Sozzle Home Page',
                      style: TextStyle(
                        color: state.primaryTextColor,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  BlocBuilder<UserStatsCubit, UserStatsState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () {
                          // TODO(any): route to game play
                          context.read<UserStatsCubit>().advanceLevelUp();
                        },
                        child: Text(
                          'Current Level: ${state.progress.currentLevel}',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

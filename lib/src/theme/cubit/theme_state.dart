part of 'theme_cubit.dart';

abstract class ThemeState {
  Color get backgroundColor;
  Color get primaryTextColor;
  Color get primaryColor;
  Color get secondaryColor;
  Color get borderColor;
}

class ThemeStateDark implements ThemeState {
  const ThemeStateDark();
  
  @override
  Color get backgroundColor => const Color(0xFF83B3DE);
  
  @override
  Color get primaryTextColor => const Color(0xFFF5F5F5);

  @override
  Color get primaryColor => const Color(0xFF4B8AC5);

  @override
  Color get secondaryColor => const Color(0xFF83B3DE);

  @override
  Color get borderColor => const Color(0xFFF5F5F5);
}

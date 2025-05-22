# Extended Flutter Theme System

This package provides a comprehensive, modular theming system for Flutter applications. The system is organized into clear subfolders for better maintainability.

## Folder Structure

### Base Components (`/base`)
Core functionality for theme management:
- `theme_manager.dart` - Central access point for light and dark themes
- `theme_mode_notifier.dart` - Riverpod provider for theme state management

### Storage (`/storage`)
Persistence of theme preferences:
- `theme_storage.dart` - Save and retrieve theme mode preferences

### Styles (`/styles`)
The building blocks of the design system:
- `theme_colors.dart` - Color definitions for both light and dark themes
- `theme_dimensions.dart` - Spacing, sizing, and border radius values
- `theme_typography.dart` - Text styles for various use cases
- `theme_gradients.dart` - Pre-defined gradients for both themes
- `theme_shadows.dart` - Shadow definitions with varying intensities
- `theme_animations.dart` - Standard animations and transitions
- `light_text_theme.dart` - Typography styles for light theme
- `dark_text_theme.dart` - Typography styles for dark theme

### Themes (`/themes`)
Concrete theme implementations:
- `light_theme.dart` - Light theme implementation
- `dark_theme.dart` - Dark theme implementation

### Root Files
- `theme.dart` - Exports all theme components for easy imports

## Usage

Import the entire theme system with a single import:

```dart
import 'package:extended_flutter_theme/theme/theme.dart';
```

### App.dart / Main.dart Example

```dart
void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      title: 'Your App',
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: themeMode,
      // Optional animation settings
      themeAnimationDuration: ThemeAnimations.duration.instant,
      themeAnimationCurve: ThemeAnimations.curve.accelerate,
      themeAnimationStyle: ThemeAnimations.style.noAnimation,
      home: const HomeScreen(),
    );
  }
}

// Theme toggle example
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeModeProvider.notifier).toggleTheme();
            },
            icon: Icon(
              ref.watch(themeModeProvider) == ThemeMode.dark
                  ? Icons.light_mode  // Show sun icon in dark mode
                  : Icons.dark_mode,  // Show moon icon in light mode
            ),
          ),
        ],
      ),
    );
  }
}


```
### Theme Colors Example

```dart
Container(
  color: ThemeColors.resolveColor(
    context,
    LightThemeColors.surface,
    DarkThemeColors.surface,
  ),
  child: Text('Hello'),
)
```
### Typography Example

```dart
Text(
  'Hello World',
  style: ThemeTypography.resolveStyle(
    context,
    LightThemeTypography.bodyLarge,
    DarkThemeTypography.bodyLarge,
  ),
)
```

### Dimensions Example

```dart
Padding(
  padding: EdgeInsets.all(ThemeDimensions.spacingM),
  child: Text('Padded text'),
)
```

### Shadows Example

```dart
Container(
  decoration: BoxDecoration(
    boxShadow: ThemeShadows.cardShadow(context),
  ),
)
```

### Animations Example

```dart
Navigator.of(context).push(
  ThemeAnimations.fadeTransition(
    page: NextScreen(),
  ),
);
```

## Best Practices

1. Always use the theme components rather than hardcoded values
2. Use the resolver methods to ensure theme-awareness
3. Keep related values organized in their appropriate files
4. When extending the system, follow the established patterns 

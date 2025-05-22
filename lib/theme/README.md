# Theme System

This folder contains a comprehensive, modular theming system for Flutter applications. The system is organized into clear subfolders for better maintainability.

## Folder Structure

### Core Components (`/core`)
Core functionality for theme management:
- `theme_manager.dart` - Central access point for light and dark themes
- `theme_mode_notifier.dart` - Riverpod provider for theme state management
- `theme_storage.dart` - Persistence of theme preferences

### Design Tokens (`/tokens`)
The building blocks of the design system:
- `theme_colors.dart` - Color definitions for both light and dark themes
- `theme_dimensions.dart` - Spacing, sizing, and border radius values
- `theme_typography.dart` - Text styles for various use cases
- `theme_gradients.dart` - Pre-defined gradients for both themes
- `theme_shadows.dart` - Shadow definitions with varying intensities
- `theme_animations.dart` - Standard animations and transitions

### Theme Definitions (`/definitions`)
Concrete theme implementations:
- `light_theme.dart` - Light theme implementation
- `dark_theme.dart` - Dark theme implementation

### Root Files
- `index.dart` - Exports all theme components for easy imports

## Usage

Import the entire theme system with a single import:

```dart
import 'package:your_app/core/theme/index.dart';
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
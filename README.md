# Flutter Screen 


A lightweight and easy-to-use Flutter package for building responsive applications with simple APIs like `.w`, `.h`, `.sp`, `.r`, percentage-based sizing, responsive widgets, and device detection.

## ✨ Features

- 📱 Responsive Width (`.w`)
- 📏 Responsive Height (`.h`)
- 🔤 Responsive Font Size (`.sp`)
- 🔵 Responsive Radius (`.r`)
- 📐 Screen Width Percentage (`.sw`)
- 📐 Screen Height Percentage (`.sh`)
- 📦 Vertical Space Extension
- 📦 Horizontal Space Extension
- 📲 Device Type Detection
- 🔄 Orientation Detection
- 🛡 Safe Area Insets
- 🧩 Responsive Builder Widget
- ⚡ Lightweight
- ❤️ Easy to Use
- 🚀 Zero Configuration

---

# Installation

Add dependency

```yaml
dependencies:
  flutter_screens:
   path: ../
```

Run

```bash
flutter pub get
```

---

# Getting Started

Wrap your application with `ScreenInit`.

```dart
void main() {
  runApp(
    ScreenInit(
      designSize: const Size(390, 844),
      child: const MyApp(),
    ),
  );
}
```

---

# Usage

## Responsive Width

```dart
Container(
  width: 200.w,
)
```

---

## Responsive Height

```dart
Container(
  height: 100.h,
)
```

---

## Responsive Font Size

```dart
Text(
  'Flutter',
  style: TextStyle(
    fontSize: 18.sp,
  ),
)
```

---

## Responsive Radius

```dart
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      16.r,
    ),
  ),
)
```

---

## Screen Percentage

```dart
Container(
  width: 80.sw,
  height: 30.sh,
)
```

---

## Vertical Space

Instead of

```dart
SizedBox(height: 20)
```

Use

```dart
20.verticalSpace
```

---

## Horizontal Space

Instead of

```dart
SizedBox(width: 16)
```

Use

```dart
16.horizontalSpace
```

---

# Screen Information

```dart
Screen.width

Screen.height

Screen.safeTop

Screen.safeBottom

Screen.orientation

Screen.deviceType
```

---

# Device Detection

```dart
Screen.isMobile

Screen.isTablet

Screen.isDesktop
```

---

# Responsive Builder

```dart
ResponsiveBuilder(
  mobile: MobileHome(),

  tablet: TabletHome(),

  desktop: DesktopHome(),
)
```

---

# Complete Example

```dart
Container(
  width: 200.w,
  height: 100.h,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20.r),
  ),
  child: Text(
    'Flutter',
    style: TextStyle(
      fontSize: 18.sp,
      color: Colors.white,
    ),
  ),
)
```

---

# API

| API | Description |
|------|-------------|
| `.w` | Responsive Width |
| `.h` | Responsive Height |
| `.sp` | Responsive Font Size |
| `.r` | Responsive Radius |
| `.sw` | Screen Width Percentage |
| `.sh` | Screen Height Percentage |
| `verticalSpace` | Responsive Vertical Space |
| `horizontalSpace` | Responsive Horizontal Space |
| `Screen.width` | Screen Width |
| `Screen.height` | Screen Height |
| `Screen.safeTop` | Top Safe Area |
| `Screen.safeBottom` | Bottom Safe Area |
| `Screen.orientation` | Screen Orientation |
| `Screen.deviceType` | Current Device Type |
| `ResponsiveBuilder` | Responsive Layout Builder |

---


# License

MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy

of this software and associated documentation files (the "Software"), to deal

in the Software without restriction, including without limitation the rights

to use, copy, modify, merge, publish, distribute, sublicense, and/or sell

copies of the Software, and to permit persons to whom the Software is

furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all

copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,

OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

SOFTWARE.
 


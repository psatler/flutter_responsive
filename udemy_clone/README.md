# udemy_clone

A new Flutter project.



## New Buttons

- [New Material Buttons](https://betterprogramming.pub/discover-flutter-new-material-buttons-in-flutter-version-1-22-39b8f1887d8)



## Dependencies

- [Auto Size Text](https://pub.dev/packages/auto_size_text)

## Problem with Images on the Web

- We need to run with the HTML renderer instead of CanvasKit. [This answer](https://stackoverflow.com/a/66617476/13137278) cover how to fix it.
  ```
  flutter run -d chrome --web-renderer html // to run the app

  flutter build web --web-renderer html --release // to generate a production build
  ```
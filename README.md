## Features

A plugin that downloads, caches and loads a font hosted on the network.

## Usage

```dart
var font = NetworkFont(
  'https://www.example.com/files/example.ttf',
  'example_bold',
  800,
);

await NetworkFontLoader.load( font );
```

## Additional information

No web support yet, but will be added later. Will throw UnsupportedException in the meantime.
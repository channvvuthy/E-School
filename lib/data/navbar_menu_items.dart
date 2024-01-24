import 'dart:convert';

String jsonStr = '''
[
      {"title": "Home", "icon": "assets/icons/home_icon.svg", "page": "Home"},
      {"title": "Video", "icon": "assets/icons/youtube_icon.svg", "page": "Video"},
      {"title": "Library", "icon": "assets/icons/library_icon.svg", "page": "Library"},
      {"title": "Partner", "icon": "assets/icons/handshake_icon.svg", "page": "Partner"},
      {"title": "Zoom", "icon": "assets/icons/zoom_icon.svg", "page": "Zoom"}
]
''';

List<dynamic> navbarMenuItems = jsonDecode(jsonStr);

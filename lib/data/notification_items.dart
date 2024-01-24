import 'dart:convert';

String jsonStr = '''
[
  {"title": "", "icon": "assets/icons/cart_icon.svg", "page": "MyCourse", "icon_color": "assets/icons/youtube_color_icon.svg"},
  {"title": "", "icon": "assets/icons/chat_icon.svg", "page": "MyZoom", "icon_color": "assets/icons/handshake_color_icon.svg"},
  {"title": "", "icon": "assets/icons/bell_icon.svg", "page": "MyLibrary", "icon_color": "assets/icons/library_color_icon.svg"}
]

''';

List<dynamic> notificationItems = jsonDecode(jsonStr);

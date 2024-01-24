import 'dart:convert';

String jsonStr = '''
[
  {
    "title": "Study & Sharing",
    "items": [
      {"title": "My Course", "icon": "assets/icons/youtube_icon.svg", "page": "MyCourse"},
      {"title": "My Zoom", "icon": "assets/icons/meeting_icon.svg", "page": "MyZoom"},
      {"title": "My Library", "icon": "assets/icons/library_icon.svg", "page": "MyLibrary"},
      {"title": "Favorite", "icon": "assets/icons/favorite_icon.svg", "page": "Favorite"},
      {"title": "Friend", "icon": "assets/icons/friend_icon.svg", "page": "Friend"},
      {"title": "Document", "icon": "assets/icons/document_icon.svg", "page": "Document"},
      {"title": "Gallery", "icon": "assets/icons/gallery_icon.svg", "page": "Gallery"},
      {"title": "Certificate", "icon": "assets/icons/certificate_icon.svg", "page": "Certificate"}
    ]
  },
  {
    "title": "Report",
    "items": [
      {"title": "Summary", "icon": "assets/icons/summary_icon.svg", "page": "Summary"},
      {"title": "Watch Video", "icon": "assets/icons/youtube_icon.svg", "page": "WatchVideo"},
      {"title": "Read Book", "icon": "assets/icons/book_icon.svg", "page": "ReadBook"},
      {"title": "Relative", "icon": "assets/icons/family_icon.svg", "page": "Relative"}
    ]
  },
  {
    "title": "Me & Privacy",
    "items": [
      {"title": "Profile", "icon": "assets/icons/profile_icon.svg", "page": "Profile"},
      {"title": "Password", "icon": "assets/icons/lock_icon.svg", "page": "Password"},
      {"title": "Parent", "icon": "assets/icons/family_icon.svg", "page": "Parent"},
      {"title": "Insurance", "icon": "assets/icons/insurance_icon.svg", "page": "Insurance"},
      {"title": "Invoice", "icon": "assets/icons/invoice_icon.svg", "page": "Invoice"},
      {"title": "Other", "icon": "assets/icons/other_icon.svg", "page": "Other"},
      {"title": "Logout", "icon": "assets/icons/logout_icon.svg", "page": "Logout"}
    ]
  },
  {
    "title": "E-School Cambodia",
    "items": [
      {"title": "Hot Chat", "icon": "assets/icons/hot_chat_icon.svg", "page": "HotChat"},
      {"title": "Policy", "icon": "assets/icons/policy_icon.svg", "page": "Policy"},
      {"title": "Help", "icon": "assets/icons/help_icon.svg", "page": "Help"},
      {"title": "About", "icon": "assets/icons/about_icon.svg", "page": "About"},
      {"title": "Share App", "icon": "assets/icons/share_icon.svg", "page": "ShareApp"},
      {"title": "Dark Mode", "icon": "assets/icons/mode_icon.svg", "page": "DarkMode"},
      {"title": "Language", "icon": "assets/icons/language_icon.svg", "page": "Language"}
    ]
  }
]
''';

List<dynamic> sidebarMenuItems = jsonDecode(jsonStr);

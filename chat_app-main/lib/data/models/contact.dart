class Contact {
  int contactId;
  String contactName;
  String contactLastName;
  bool isOnline;
  String imageUrl;
  DateTime lastOnlineTime;
  Contact({
    required this.contactId,
    required this.contactName,
    required this.contactLastName,
    required this.isOnline,
    required this.imageUrl,
    required this.lastOnlineTime,
  });
}

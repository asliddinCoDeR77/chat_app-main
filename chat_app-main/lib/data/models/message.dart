class Message {
  int messageId;
  String messageText;
  bool isFile;
  String createdTime;
  int contactId;
  int status;
  Message({
    required this.messageId,
    required this.messageText,
    required this.isFile,
    required this.createdTime,
    required this.contactId,
    required this.status,
  });
}

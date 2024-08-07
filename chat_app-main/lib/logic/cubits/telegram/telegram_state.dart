part of 'telegram_cubit.dart';

sealed class TelegramState {}

final class TelegramInitial extends TelegramState {}

final class TelegramUserState extends TelegramState {
  List<Contact> contacts;
  TelegramUserState(this.contacts);
}

final class TelegramMessagess extends TelegramState {
  List<Message> messages;
  TelegramMessagess(this.messages);
}

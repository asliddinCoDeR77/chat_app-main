import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:chat_app/data/models/contact.dart';
import 'package:chat_app/data/models/message.dart';

part 'telegram_state.dart';

class TelegramCubit extends Cubit<TelegramState> {
  TelegramCubit() : super(TelegramInitial());

  getContacts() {
    emit(
      TelegramUserState(
        [
          Contact(
              contactId: 3,
              contactName: 'Muller',
              contactLastName: 'Thomas',
              isOnline: false,
              imageUrl:
                  'https://img.a.transfermarkt.technology/portrait/big/58358-1683890647.jpg?lm=1',
              lastOnlineTime: DateTime.now()),
          Contact(
              contactId: 4,
              contactName: 'Ronaldo',
              contactLastName: 'Cristiano',
              isOnline: false,
              imageUrl:
                  'https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg',
              lastOnlineTime: DateTime.now()),
        ],
      ),
    );
  }

  getMesagessById(int contactID) {
    List<Message> newList = [];
    List<Message> messages = [
      Message(
        messageId: Random().nextInt(20),
        messageText: 'Hi from Muller do you want come FC BAYERN MUNCHIN?',
        isFile: false,
        createdTime: DateTime.now().toString(),
        contactId: 3,
        status: Random().nextInt(20),
      ),
      Message(
        messageId: Random().nextInt(20),
        messageText: 'HI I`M CRISTIANO RONALDO I`M THE GOAT ',
        isFile: false,
        createdTime: DateTime.now().toString(),
        contactId: 4,
        status: Random().nextInt(20),
      ),
    ];

    for (var element in messages) {
      if (element.contactId == contactID) {
        newList.add(element);
      }
    }
    emit(TelegramMessagess(newList));
  }
}

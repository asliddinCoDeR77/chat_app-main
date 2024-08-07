import 'package:chat_app/data/models/contact.dart';
import 'package:chat_app/logic/cubits/telegram/telegram_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  final Contact contact;
  const ChatScreen({super.key, required this.contact});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TelegramCubit>().getMesagessById(widget.contact.contactId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
              context.read<TelegramCubit>().getContacts();
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(widget.contact.contactName),
        centerTitle: true,
      ),
      body: BlocBuilder<TelegramCubit, TelegramState>(
        builder: (context, state) {
          if (state is TelegramMessagess) {
            return ListView.builder(
              itemCount: state.messages.length,
              itemBuilder: (context, index) {
                final messages = state.messages[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    messages.messageText,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                );
              },
            );
          }
          return const Center(
            child: Text("No sms broo :("),
          );
        },
      ),
    );
  }
}

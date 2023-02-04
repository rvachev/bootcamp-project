import 'package:flutter/material.dart';

@immutable
class Chat {
  final String userName;
  final String? lastMessage;
  final DateTime? date;
  final String? userAvatar;
  final int countUnreadMessages;

  const Chat({
    required this.userName,
    this.lastMessage,
    this.date,
    this.userAvatar,
    this.countUnreadMessages = 0,
  });

  factory Chat.fromJson(Map<String, dynamic> map) {
    return Chat(
      userName: map['userName'] ?? '',
      lastMessage: map['lastMessage'],
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'])
          : null,
      userAvatar: map['userAvatar'] != null
          ? 'assets/avatars/${map['userAvatar']}'
          : null,
      countUnreadMessages: map['countUnreadMessages']?.toInt() ?? 0,
    );
  }
}

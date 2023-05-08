import 'package:biking_app/allConstants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserChat {
  String id;
  String photoUrl;
  String nickname;
  String aboutMe;
  String phoneNumber;

  UserChat({
    required this.id,
    required this.photoUrl,
    required this.nickname,
    required this.aboutMe,
    required this.phoneNumber,
  });

  Map<String, String> toJson() {
    return {
      FirestoreConstants.nickname: nickname,
      FirestoreConstants.aboutMe: aboutMe,
      FirestoreConstants.photoUrl: photoUrl,
      FirestoreConstants.phoneNumber: phoneNumber,
    };
  }

  factory UserChat.fromDocument(DocumentSnapshot doc) {
    String aboutMe = "";
    String photoUrl = "";
    String phoneNumber = "";
    String nickname = "";
    try {
      aboutMe = doc[FirestoreConstants.aboutMe];
    } catch (e) {}
    try {
      photoUrl = doc[FirestoreConstants.photoUrl];
    } catch (e) {}
    try {
      phoneNumber = doc[FirestoreConstants.phoneNumber];
    } catch (e) {}
    try {
      nickname = doc[FirestoreConstants.nickname];
    } catch (e) {}
    return UserChat(
      id: doc.id,
      aboutMe: aboutMe,
      photoUrl: photoUrl,
      phoneNumber: phoneNumber,
      nickname: nickname,
    );
  }
}

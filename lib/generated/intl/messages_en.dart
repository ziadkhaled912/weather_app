// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "contentError": MessageLookupByLibrary.simpleMessage(
            "This content is unavailable currently, please try again later"),
        "forbiddenAccessError": MessageLookupByLibrary.simpleMessage(
            "You don\'t have the adequate permissions to view this."),
        "internetError": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection"),
        "lang": MessageLookupByLibrary.simpleMessage("English"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "onBoardingSubtitle1": MessageLookupByLibrary.simpleMessage(
            "All circles are guaranteed because all users\nThey offer legal guarantees"),
        "onBoardingSubtitle2": MessageLookupByLibrary.simpleMessage(
            "You will be able to find the circle that suits you, as well\nEasily adjust payment and receivable dates"),
        "onBoardingSubtitle3": MessageLookupByLibrary.simpleMessage(
            "You can create your own circle and invite your friends to it"),
        "onBoardingTitle1": MessageLookupByLibrary.simpleMessage("Secure"),
        "onBoardingTitle2": MessageLookupByLibrary.simpleMessage("Easy"),
        "onBoardingTitle3":
            MessageLookupByLibrary.simpleMessage("Customize your own circle"),
        "serviceError": MessageLookupByLibrary.simpleMessage(
            "Service unavailable, please try again later."),
        "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
            "Something went wrong, please try again later")
      };
}

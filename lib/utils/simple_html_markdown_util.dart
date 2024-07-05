// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

// TODO look into using the "html_unescape" package too

class SimpleHtmlMarkdownUtil {
  static String simpleHtmlToMarkdown(String htmlString) {
    final cleanedUpString = _cleanUpHtmlString(htmlString);
    final paragraphs = _getParagraphs(cleanedUpString);
    return _replaceTextSpans(paragraphs);
  }

  static List<String> _getParagraphs(String htmlString) {
    final paragraphMatches =
        RegExp("<p[^>]*>|<ul[^>]*>|<ol[^>]*>").allMatches(htmlString).toList();

    if (paragraphMatches.isEmpty) {
      final trimmedString = htmlString.trim();
      return trimmedString.isNotEmpty ? [trimmedString] : [];
    } else {
      final paragraphs = List<String>.empty(growable: true);

      if (paragraphMatches.first.start != 0) {
        paragraphs.add(htmlString.substring(0, paragraphMatches.first.start));
      }

      for (var i = 0; i < paragraphMatches.length; i++) {
        final match = paragraphMatches[i];

        final paragraphEnd = (i == paragraphMatches.length - 1)
            ? htmlString.length
            : paragraphMatches[i + 1].start;

        final matchedTag = htmlString.substring(match.start, match.end);

        final paragraphString = htmlString
            .substring(match.start + matchedTag.length, paragraphEnd)
            .trim();

        if (paragraphString.isNotEmpty) {
          switch (matchedTag[1]) {
            case "u": //ul
              paragraphs.addAll(_getList(paragraphString, false));
            case "o": //ol
              final olStartMatch =
                  RegExp("start=['\"][0-9]*['\"]").stringMatch(matchedTag);

              if (olStartMatch != null && olStartMatch.isNotEmpty) {
                final numberMatch =
                    int.tryParse(olStartMatch.split(RegExp("['\"]"))[1]);
                if (numberMatch == null) {
                  paragraphs.addAll(_getList(paragraphString, true));
                } else {
                  paragraphs.addAll(
                      _getList(paragraphString, true, start: numberMatch));
                }
              } else {
                paragraphs.addAll(_getList(paragraphString, true));
              }
            case "p": //p
              paragraphs.add(paragraphString);
            default:
              throw ArgumentError.value(matchedTag);
          }
        }
      }
      return paragraphs;
    }
  }

  static List<String> _getList(String listString, bool ordered,
      {int start = 1}) {
    final splitString = listString.split(RegExp("<li[^>]*>"));
    if (splitString.first.trim().isEmpty) {
      return List.generate(
          splitString.length - 1,
          (i) => ordered
              ? "${i + start}.\t${splitString[i + 1]}"
              : "*\t${splitString[i + 1]}");
    } else {
      return List.generate(
          splitString.length,
          (i) => ordered
              ? "${i + start}.\t${splitString[i]}"
              : "*\t${splitString[i]}");
    }
  }

  static String _cleanUpHtmlString(String orig) {
    return orig
        .replaceAll(RegExp("<\\s*"), "<")
        .replaceAll(RegExp("\\s*>"), ">")
        .replaceAll(RegExp("</\\s*"), "</")
        .replaceAll(RegExp("/\\s*>"), "/>")
        .replaceAll(RegExp("</p>|</ul>|</ol>|</li>|\\r|\r"), "")
        .replaceAll("&nbsp;", " ")
        .replaceAll(RegExp("<br[^>]*>|<div[^>]*>"),
            "<p>"); //TODO \\s translates to whitespace, right?
  }

  static String _replaceTextSpans(List<String> paragraphs) {
    return paragraphs
        .join("\n\n")
        .replaceAll(RegExp("<strong[^>]*>|<b>|</strong>|</b>"), "**")
        .replaceAll(RegExp("<em[^>]*>|<i>|</em>|</i>"), "_");
  }
}

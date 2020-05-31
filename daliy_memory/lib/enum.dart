
enum Gender { MAN, WOMAN }
extension GenderExtension on Gender {
  String getValue() {
    switch (this) {
      case Gender.MAN:
        return '남자';
      case Gender.WOMAN:
        return '여자';
      default:
        return null;
    }
  }
}
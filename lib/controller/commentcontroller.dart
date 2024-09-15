import 'package:get/get.dart';

class CommentController extends GetxController {
  var comments = <String>[].obs;
  var commentText = ''.obs;

  void addComment() {
    if (commentText.value.isNotEmpty) {
      comments.add(commentText.value);
      commentText.value = '';
    }
  }
}

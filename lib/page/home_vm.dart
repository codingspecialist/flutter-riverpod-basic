import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터 타입 (원시타입이면 안만들어도 됨)
class SelectorModel {
  List<String> images;
  int selectedIndex;

  SelectorModel(this.images, this.selectedIndex);

  SelectorModel copyWith({
    List<String>? images,
    int? selectedIndex,
  }) {
    return SelectorModel(
      images ?? this.images,
      selectedIndex ?? this.selectedIndex,
    );
  }

  // getter
  String selectedImage() => images[selectedIndex];

  // getter
  bool isSelected(int myIndex) => selectedIndex == myIndex;
}

// 2. 창고 (상태와 행위를 가진다)
class HomeVM extends Notifier<SelectorModel> {
  @override
  SelectorModel build() {
    return SelectorModel(["assets/p1.jpeg", "assets/p2.jpeg", "assets/p3.jpeg", "assets/p4.jpeg"], 0);
  }

  void onClick(int index) {
    print(index);

    // 1. 기존 값 변경 (rebuild 안됨)
    // state.selectedIndex = index;

    // 2. 기존 값 불변 유지 -> 깊은 복사 (rebuild 됨) - copyWith 라는 메서드를 일반적으로 사용
    state = state.copyWith(selectedIndex: index);
  }
}

// 3. 창고 관리자
final homeProvider = NotifierProvider<HomeVM, SelectorModel>(() {
  return HomeVM();
});

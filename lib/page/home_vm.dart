import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 데이터 타입 (원시타입이면 안만들어도 됨)
class SelectorModel {
  final List<String> images; // 불변!!
  final int selectedId;

  SelectorModel(this.images, this.selectedId);

  SelectorModel copyWith({
    List<String>? images,
    int? selectedId,
  }) {
    return SelectorModel(
      images ?? this.images,
      selectedId ?? this.selectedId,
    );
  }

  // 선택된 이미지 반환
  String selectedImage() => images[selectedId];

  // 현재 index가 선택된 index인지 여부 반환
  bool isSelected(int id) => selectedId == id;
}

/// 2. 창고 (상태와 행위(변경로직)를 가진다)
/// - Notifier를 상속하여 상태를 관리하고 변경할 수 있음
/// - build(): 초기 상태 설정
/// - onClick(): 새로운 상태로 갱신
class HomeVM extends Notifier<SelectorModel> {
  @override
  SelectorModel build() {
    return SelectorModel(["assets/p1.jpeg", "assets/p2.jpeg", "assets/p3.jpeg", "assets/p4.jpeg"], 0);
  }

  void onClick(int id) {
    print(id);

    // 1. 기존 값 변경 (rebuild 안됨) final 지우고 테스트
    // state.selectedId = id;

    // 2. 기존 값 불변 유지 -> 깊은 복사 (rebuild 됨) - copyWith 라는 메서드를 일반적으로 사용
    state = state.copyWith(selectedId: id);
  }
}

// 3. 창고 관리자
final homeProvider = NotifierProvider<HomeVM, SelectorModel>(() {
  return HomeVM();
});

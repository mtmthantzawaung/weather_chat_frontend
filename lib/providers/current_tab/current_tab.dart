import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/enums/bottom_tab.dart';

final currentTabStateProvider = StateProvider.autoDispose<TabItem>(
  (ref) => TabItem.weather,
);

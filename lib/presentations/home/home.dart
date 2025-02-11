import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/providers/current_tab/current_tab.dart';
import 'package:weather_chat_frontend/utils/enums/bottom_tab.dart';

// Global keys for the home page and navigators
final GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

final navigatorKeys = <TabItem, GlobalKey<NavigatorState>>{
  TabItem.weather: GlobalKey<NavigatorState>(),
  TabItem.user: GlobalKey<NavigatorState>(),
  TabItem.chat: GlobalKey<NavigatorState>(),
  TabItem.setting: GlobalKey<NavigatorState>(),
};

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentTab = ref.watch(currentTabStateProvider);
    final currentTabNotifier = ref.watch(currentTabStateProvider.notifier);

    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {
        // Handle back navigation within the current tab
        if (!didPop) {
          final isFirstRouteInCurrentTab =
              !await navigatorKeys[currentTab]!.currentState!.maybePop();
          if (isFirstRouteInCurrentTab) {
            return; // Prevent popping if it's the first route
          }
        }
      },
      child: Scaffold(
        extendBody: true,
        key: homePageKey,
        body: Stack(
          children: TabItem.values
              .map(
                (tabItem) => _TabPage(
                  currentTab: currentTab,
                  tabItem: tabItem,
                  navigationKey: navigatorKeys[tabItem]!,
                ),
              )
              .toList(),
        ),
        bottomNavigationBar: _BottomNavigationBar(
          currentTab: currentTab,
          onSelect: (tabItem) {
            if (currentTab == tabItem) {
              // Pop to the first route if the same tab is tapped
              navigatorKeys[tabItem]
                  ?.currentState
                  ?.popUntil((route) => route.isFirst);
            } else {
              // Switch to the new tab
              currentTabNotifier.update((state) => tabItem);
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB Pressed!");
          },
          backgroundColor: Colors.blue,
          elevation: 6,
          child: const Icon(Icons.add, size: 32, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class _TabPage extends StatefulWidget {
  const _TabPage({
    required this.currentTab,
    required this.tabItem,
    required this.navigationKey,
  });

  final TabItem currentTab;
  final TabItem tabItem;
  final GlobalKey<NavigatorState> navigationKey;

  @override
  State<_TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<_TabPage> {
  late HeroController _heroController;

  @override
  void initState() {
    super.initState();
    _heroController = HeroController();
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: widget.currentTab != widget.tabItem, // Hide inactive tabs
      child: Navigator(
        key: widget.navigationKey,
        observers: [_heroController],
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: widget.tabItem.pageBuilder(context),
          );
        },
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    required this.currentTab,
    required this.onSelect,
  });

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelect;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.black,
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(TabItem.values.length + 1, (index) {
          if (index == 2) return const Spacer(); // Reserve space for FAB

          final tabItem = TabItem.values[index > 2 ? index - 1 : index];
          return Flexible(
            child: IconButton(
              icon: Icon(
                tabItem.icon(),
                color: currentTab == tabItem ? Colors.blue : Colors.grey,
                size: tabItem.iconSize(),
              ),
              onPressed: () => onSelect(tabItem),
            ),
          );
        }),
      ),
    );
  }
}

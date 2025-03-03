import "package:convex_bottom_bar/convex_bottom_bar.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";

class Homepage extends HookWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState<int>(0);
    var containerList = <Widget>[
      Container(
        alignment: Alignment.center,
        child: const Placeholder(),
      ),
      Container(
        alignment: Alignment.center,
        child: const Placeholder(),
      ),
      Container(
        alignment: Alignment.center,
        child: const Placeholder(),
      ),
      Container(
        alignment: Alignment.center,
        child: const Placeholder(),
      ),
      Container(
        alignment: Alignment.center,
        child: const Placeholder(),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foursquare App'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home_outlined, title: 'Home'),
          TabItem(icon: Icons.receipt_outlined, title: 'Receipts'),
          TabItem(icon: Icons.shopping_cart_outlined, title: 'Shopping'),
          TabItem(icon: Icons.chat_outlined, title: 'Chatbox'),
          TabItem(icon: Icons.account_circle_outlined, title: 'Account'),
        ],
        onTap: (int index) {
          currentPageIndex.value = index;
        },
        backgroundColor: Theme.of(context).colorScheme.surface,
        color: Theme.of(context).colorScheme.onSurface,
        activeColor: Theme.of(context).colorScheme.primary,
        style: TabStyle.fixedCircle,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: containerList[currentPageIndex.value],
      ),
    );
  }
}

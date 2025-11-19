import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreakFastPage extends StatelessWidget {
  const BreakFastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // ============================================================
  // APPBAR
  // ============================================================
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Breakfast",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      leading: _buildLeadingIcon(),
      actions: [_buildRightIcon()],
    );
  }
// Membuat Widget _buildLeadingIcon
  Widget _buildLeadingIcon() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          "assets/icons/back-navs.svg",
          height: 32,
          width: 32,
        ),
      ),
    );
  }
// Membuat Widget _buildRightIcon
  Widget _buildRightIcon() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(
          "assets/icons/detail-navs.svg",
          height: 32,
          width: 32,
        ),
      ),
    );
  }

 // ============================================================
  // BODY
  // ============================================================
  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBar(),
          const SizedBox(height: 25),
          const Text(
            "Category",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          _buildCategoryList(),
          const SizedBox(height: 30),
          const Text(
            "Recommendation for Diet",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          _buildRecommendationBox(),
          const SizedBox(height: 30),
          const Text(
            "Popular",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          _buildPopularList(),
        ],
      ),
    );
  }

  // ============================================================
  // SEARCH BAR
  // ============================================================
  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: const Offset(0, 2),
          )
        ],
      ),
        child: TextField(
        decoration: InputDecoration(
          hintText: "Search Pancake",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/filter.svg"),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
      ),
      )
      );
  }

  // ============================================================
  // CATEGORY LIST (Responsive)
  // ============================================================
  Widget _buildCategoryList() {
    final List<Map<String, String>> categories = [
      {"name": "Salad", "icon": "assets/icons/salad.svg"},
      {"name": "Cake", "icon": "assets/icons/cake.svg"},
      {"name": "Pie", "icon": "assets/icons/piee.svg"},
      {"name": "Smoothie", "icon": "assets/icons/lemon.svg"},
    ];

    return SizedBox(
      height: 100,
      child: LayoutBuilder(builder: (context, constraints) {
        double itemWidth = constraints.maxWidth * 0.22;

        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 15),

          itemBuilder: (context, index) {
            bool even = index % 2 == 0;

            return Container(
              width: itemWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  colors: even
                      ? [Color(0x33B5D5FF), Color(0x333B8BFF)]
                      : [Color(0x33FFB6C1), Color(0x33FBC2EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(categories[index]["icon"]!, height: 32),
                  const SizedBox(height: 6),
                  Text(
                    categories[index]["name"]!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  
  }

  // ============================================================
  // RECOMMENDATION BOX (Responsive + Hover Button)
  // ============================================================
  Widget _buildRecommendationBox() {
    final List<Map<String, String>> foods = [
      {
        "name": "Honey Pancake",
        "detail": "Easy | 30mins | 180kCal",
        "icons": "assets/icons/blueberry.svg",
      },
      {
        "name": "Canai Bread",
        "detail": "Easy | 20mins | 210kCal",
        "icons": "assets/icons/vector1.svg",
      },
      {
        "name": "Honey Dimas",
        "detail": "Easy | 30mins | 180kCal",
        "icons": "assets/icons/blueberry.svg",
      },
      {
        "name": "Canai Cendy",
        "detail": "Easy | 20mins | 210kCal",
        "icons": "assets/icons/vector1.svg",
      }
    ];

    return SizedBox(
      height: 260,
      child: LayoutBuilder(builder: (context, constraint) {
        double boxWidth = constraint.maxWidth * 0.55;

        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: foods.length,
          separatorBuilder: (_, __) => const SizedBox(width: 15),

          itemBuilder: (context, index) {
            bool even = index % 2 == 0;

            return Container(
              width: boxWidth,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: LinearGradient(
                  colors: even
                      ? [Color(0x339DCEFF), Color(0x3392A3FD)]
                      : [Color(0x33FBC2EB), Color(0x33C58BF2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(foods[index]["icons"]!, height: 110),

                  Text(
                    foods[index]["name"]!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    foods[index]["detail"]!,
                    style: const TextStyle(color: Colors.black54, fontSize: 13),
                  ),

                  HoverButton(
                    text: "View",
                    onPressed: () {},
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }

  // ============================================================
  // POPULAR LIST
  // ============================================================
  Widget _buildPopularList() {
    final List<Map<String, String>> popular = [
      {
        "name": "Blueberry Pancake",
        "detail": "Medium | 30mins | 230kCal",
        "icons": "assets/icons/blueberry.svg",
      },
      {
        "name": "Salmon Nigiri",
        "detail": "Medium | 20mins | 120kCal",
        "icons": "assets/icons/salmon.svg",
      }
    ];

    return Column(
      children: List.generate(popular.length, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 12,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Row(
            children: [
              SvgPicture.asset(popular[index]["icons"]!, height: 60),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popular[index]["name"]!,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      popular[index]["detail"]!,
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF0F0F0),
                ),
                child: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
              )
            ],
          ),
        );
      }),
    );
  }
}
/// ===================================================================
/// HOVER BUTTON (WITH ANIMATION)
/// ===================================================================
/// Tombol dengan hover animasi:
/// - Warna berubah ketika mouse hover
/// - Warna berubah ketika tombol ditekan
/// - Ada animasi smooth (AnimatedContainer)
/// - Support Web, Desktop, dan Mobile (tanpa hover di mobile)
class HoverButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const HoverButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false; // status hover
  bool isPressed = false; // status ditekan

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // Ketika pointer masuk area tombol
      onEnter: (_) => setState(() => isHovered = true),

      // Ketika pointer keluar area tombol
      onExit: (_) => setState(() {
        isHovered = false;
        isPressed = false;
      }),

      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) => setState(() => isPressed = false),
        onTapCancel: () => setState(() => isPressed = false),
        onTap: widget.onPressed,

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          height: 38,
          width: 110,
          alignment: Alignment.center,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            // Perubahan warna berdasarkan state
            color: isPressed
                ? const Color(0xFF6C7BFF) // ditekan
                : isHovered
                    ? const Color(0xFF92A3FD) // hover
                    : const Color(0xFFE4E4E4), // normal

            // Shadow muncul saat hover
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    )
                  ]
                : [],
          ),

          // Text tombol
          child: Text(
            widget.text,
            style: TextStyle(
              color: isHovered || isPressed ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreakFastPage extends StatelessWidget {
  const BreakFastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      // body: _buildBody(),
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
          // _buildSearchBar(),
          const SizedBox(height: 25),
          const Text(
            "Category",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          // _buildCategoryList(),
          const SizedBox(height: 30),
          const Text(
            "Recommendation for Diet",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          // _buildRecommendationBox(),
          const SizedBox(height: 30),
          const Text(
            "Popular",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          // _buildPopularList(),
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
}
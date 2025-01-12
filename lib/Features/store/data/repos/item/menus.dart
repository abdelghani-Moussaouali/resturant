class Menu {
  final String menu;
  const Menu({required this.menu});

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      menu: json['menu'],
    );
  }
}

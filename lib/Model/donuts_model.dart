class Donut {
  const Donut({ this.name, this.kind, this.price, this.image, this.rate, this.inter, this.detail});
  final String name;
  final String kind;
  final String price;
  final String image;
  final String rate;
  final List<String> inter;
  final String detail;
}

const List<Donut> donuts = const [
  const Donut(name: "Nuts Caramel", kind: "Dunkin's", price: "36", image: "assets/images/donut7.jpg",rate:"3.8",
      inter: ['3', '.9', '12', '40'], detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"
  ),
  const Donut(name: "Red Velvet", kind: "Dunkin's", price: "45",image: "assets/images/donut2.jpg",rate:"4.9",
      inter: ['3', '.9', '12', '40'], detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"),
  const Donut(name: "Vanilla Sprinkle", kind: "Dunkin's", price: "84",image: "assets/images/donut6.jpg",rate:"4.2",
      inter: ['3', '.9', '12', '40'],detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"),
  const Donut(name: "Coconut Cake", kind: "Dunkin's", price: "95",image: "assets/images/donut8.jpg",rate:"3.5",
      inter: ['3', '.9', '12', '40'],detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"),
  const Donut(name: "Nuts Caramel", kind: "Dunkin's", price: "36",image: "assets/images/donut4.jpg",rate:"4.8",
      inter: ['3', '.9', '12', '40'],detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"),
  const Donut(name: "Nuts Caramel", kind: "Dunkin's", price: "36",image: "assets/images/donut5.jpg",rate:"3.9",
      inter: ['3', '.9', '12', '40'],detail:" The doughnut is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendor"),

];
class Tip {
  String id;
  String title;
  double amount;
  double tip;
  String date;

  Tip({
    required this.id,
    required this.title,
    required this.date,
    required this.amount,
    required this.tip,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonData = {
      'id': id,
      'title': title,
      'date': date,
      'amount': amount,
      'tip': tip,
    };
    return jsonData;
  }

  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip(
      id: json['id'],
      title: json['title'],
      date: json['date'],
      amount: json['amount'].toDouble(),
      tip: json['tip'].toDouble(),
    );
  }
}

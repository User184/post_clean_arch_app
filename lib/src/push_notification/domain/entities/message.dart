class Message {
  final String? route;
  final String? title;
  final String? body;

  const Message({
    this.route,
    this.title,
    this.body,
  });

  @override
  String toString() {
    return 'Message{route: $route, title: $title, body: $body}';
  }
}

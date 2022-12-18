class InstagramNotification {
  final String name;
  final String profilePic;
  final String content;
  final String timeAgo;
  final bool hasStory;

  InstagramNotification(
      this.name,
      this.profilePic,
      this.content,
      this.timeAgo,
      this.hasStory
      );

  factory InstagramNotification.fromJson(Map<String, dynamic> json) {
    return new InstagramNotification(
        json['name'],
        json['profilePic'],
        json['content'],
        json['timeAgo'],
        json['hasStory']
    );
  }
}
class ImagesModel {
  ImagesModel({
    required this.status,
    required this.images,
    required this.message,
  });

  String status;
  List<dynamic> images;
  String message;

  factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
        status: json["status"],
        images: json["data"]["images"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": images,
        "message": message,
      };
}

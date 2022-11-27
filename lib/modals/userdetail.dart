class Faculty{
  final String imagePath;
  final String facultyId;
  final String facultyName;
  final String email;
  final String phoneNo;
  //final NumberInputElement phoneNo;
  final String DOB;
  final String subject;

  bool isActive;

  Faculty({
    required this.imagePath,
    required this.facultyName,
    required this.facultyId,
    required this.email,
    required this.phoneNo,
    required this.subject,
    required this.DOB,
    this.isActive = true,
  });
}
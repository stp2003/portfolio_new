class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Problem Solving',
    organization: 'Hackerrank',
    date: 'May 2022',
    skills: 'DSA . JAVA',
    credential: 'https://www.hackerrank.com/certificates/83fb575d3cbc',
  ),
  CertificateModel(
    name: 'Java 5 Star',
    organization: 'Hackerrank',
    date: 'JUL 2022',
    skills: 'Java . Problem Solving . DSA',
    credential:
        'https://www.hackerrank.com/shashwatshandil3?badge=java&stars=5&level=3&hr_r=1&utm_campaign=social-buttons&utm_medium=linkedin&utm_source=badge_share&social=linkedin',
  ),
  CertificateModel(
    name: 'C++ 3 Star',
    organization: 'Hackerrank',
    date: 'JUL 2022',
    skills: 'C++ . Problem Solving . DSA',
    credential:
        'https://www.hackerrank.com/shashwatshandil3?badge=java&stars=5&level=3&hr_r=1&utm_campaign=social-buttons&utm_medium=linkedin&utm_source=badge_share&social=linkedin',
  ),
  CertificateModel(
    name: 'Data Science',
    organization: 'Coursera',
    date: 'May 2022',
    skills: 'Python . Data Science',
    credential:
        'https://www.coursera.org/learn/what-is-datascience/home/week/1?utm_source=link&utm_medium=certificate&utm_content=cert_image&utm_campaign=sharing_cta',
  ),
  CertificateModel(
    name: 'Global Energy Business',
    organization: 'Coursera',
    date: 'Dec 2022',
    skills: '',
    credential:
        'https://www.coursera.org/account/accomplishments/verify/YCDAWWN2BRHE?utm_source=ln&utm_medium=certificate&utm_content=cert_image&utm_campaign=pdf_header_button&utm_product=course',
  ),
  CertificateModel(
    name: 'Learn Flutter and Dart',
    organization: 'Udemy',
    date: 'Oct 2023',
    skills: 'Flutter . Dart',
    credential:
        'https://www.udemy.com/certificate/UC-01cce0ea-a2ca-46ad-a1fa-4e58193db7b0/',
  ),
  CertificateModel(
    name: 'Java Collections Framework + APIs',
    organization: 'Udemy',
    date: 'Oct 2023',
    skills: 'Java . APIs . Generics',
    credential:
        'https://www.udemy.com/certificate/UC-34f3eb2a-a026-419e-aabf-088327cd07e1/',
  ),
  CertificateModel(
    name: 'Flutter Animations',
    organization: 'MindLuster',
    date: 'nov 2023',
    skills: 'Flutter . Dart . Animations . Hero',
    credential: 'https://www.mindluster.com/storage/cer/12161485656.jpg',
  ),
];

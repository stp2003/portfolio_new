class Project {
  final String name;
  final String description;
  final String image;
  final String link;

  Project(
    this.name,
    this.description,
    this.image,
    this.link,
  );
}

List<Project> projectList = [
  Project(
    'BaatCheet',
    'This is a fully responsive Chat App integrated with firebase backend and uses riverpod 2.0 for state management. This app has it all- phone number verification, one to one chatting , group chatting, 24-hour based status funtionality, user online or offline verification, message seen or not verification, replying to a particular message, sharing emojis, gifs, pictures, video and audio, and calling funtionality with your contacts who uses this app.',
    'assets/images/whatsapp.png',
    'https://github.com/stp2003/Baat-Cheet',
  ),
  Project(
    'Cinephile',
    'A Flutter project that uses TMDb-Api to fetch movies using Bloc and following Clean architecture.',
    'assets/images/cinephile.jpg',
    'https://github.com/stp2003/Cinephile',
  ),
  Project(
    'Dhagga',
    'A Thread Like app where you can post images and messages and like them, follow people and get notifications. This app is made by flutter and supabase is used as backend',
    'assets/images/dhagga.jpg',
    'https://github.com/stp2003/Dhaagga',
  ),
  Project(
    'Virtual Vortex',
    'In this app I have build a complete online meeting app with firebase authentication and Jitse_Meet. In this app you can start a meeting share the meeting link or meeting code to other to join in or you can join the meeting by doing the same. You can share the screen, raise your hand, chat during the meeting mute or unmute if you are host. Yor entite details will be shown in details section that how many meet you joined, on which day and for how many minutes.',
    'assets/images/virtualvortex.png',
    'https://github.com/stp2003/virtual_vortex',
  ),
  Project(
    'Whether App',
    'This is simple weather app which fetches the data from wheatherapi.com and show the weather of a given searched place. It has a really beautiful UI which shows the weather of an entire week. This is 2 screen app which shows the weather in detail and shows corresponding images to make a good user experience.',
    'assets/images/weather.png',
    'https://github.com/stp2003/whether_app_flutter',
  ),
  Project(
    'Image Editor App',
    'This is an simple image editor app in which we can upload a image from our device and write something on the image, then we can change the size of the text, change the position by draging the text, change the color of the text through a color pallett, we can change the font weigth of the text i.e bold and italics.',
    'assets/images/imageeditor.png',
    'https://github.com/stp2003/dictionary_app_flutter',
  ),
  Project(
    'Flutter Music Streaming Application',
    'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
    'assets/images/player.png',
    'https://github.com/stp2003/Music-Player',
  ),
  Project(
    'Flutter Apps with ML Integration',
    'I have made few flutter projects with ML integration like speech to text convertor, text to speech convertor and a qr-code generator and scanner, whic scans any given qr and opens in browser and it can also generate a qr-code for any text, photo or any link.',
    'assets/images/tts.png',
    'https://github.com/stp2003/tts_flutter',
  ),
  Project(
    'Expense Manager App',
    'Welcome to the Beautiful Expense Manager App repository! This Flutter-based expense manager application combines elegant design with a robust backend, ensuring a seamless and organized expense manager experience. From stunning UI to real-time synchronization, this app has you covered.',
    'assets/images/expense.png',
    'https://github.com/stp2003/Expense-Manager',
  ),
  Project(
    'Wall-Vortex',
    'This app shows you the latest trending wallpapers, as well the ones you search. You can also download the wallpaper and set as wallpaper on your device.',
    'assets/images/wallpaper.png',
    'https://github.com/stp2003/WallVortex-Hub',
  ),
  Project(
    'Chess',
    'This is a chess app made in flutter. It has smooth UI and very great UX.',
    'assets/images/chess.png',
    'https://github.com/stp2003/Chess',
  ),
  Project(
    'Medicine Reminder App',
    'Introducing the extraordinary "Medicine Reminder App" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly choose time for their medicine.',
    'assets/images/doctor.png',
    'https://github.com/stp2003/Medicine-Reminder-App',
  ),
];

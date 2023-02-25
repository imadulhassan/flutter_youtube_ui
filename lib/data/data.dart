class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'IMAD',
  profileImageUrl:
      'https://yt3.ggpht.com/yti/AHXOFjUgy1kzLaMyr45VTWCmDvEw-wluzDInyIb1iqhU=s88-c-k-c0x00ffffff-no-rj-mo',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

// final List<Video> videos = [
//   Video(
//     id: 'x606y4QWrxo',
//     author: currentUser,
//     title: 'Flutter Clubhouse Clone UI Tutorial | Apps From Scratch',
//     thumbnailUrl: 'https://i.ytimg.com/vi/x606y4QWrxo/0.jpg',
//     duration: '8:20',
//     timestamp: DateTime(2021, 3, 20),
//     viewCount: '10K',
//     likes: '958',
//     dislikes: '4',
//   ),
//   Video(
//     author: currentUser,
//     id: 'vrPk6LB9bjo',
//     title:
//         'Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture',
//     thumbnailUrl: 'https://i.ytimg.com/vi/vrPk6LB9bjo/0.jpg',
//     duration: '22:06',
//     timestamp: DateTime(2021, 2, 26),
//     viewCount: '8K',
//     likes: '485',
//     dislikes: '8',
//   ),
//   Video(
//     id: 'ilX5hnH8XoI',
//     author: currentUser,
//     title: 'Flutter Instagram Stories',
//     thumbnailUrl: 'https://i.ytimg.com/vi/ilX5hnH8XoI/0.jpg',
//     duration: '10:53',
//     timestamp: DateTime(2020, 7, 12),
//     viewCount: '18K',
//     likes: '1k',
//     dislikes: '4',
//   ),
// ];

// final List<Video> suggestedVideos = [
//   Video(
//     id: 'rJKN_880b-M',
//     author: currentUser,
//     title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
//     thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
//     duration: '1:13:15',
//     timestamp: DateTime(2020, 8, 22),
//     viewCount: '32K',
//     likes: '1.9k',
//     dislikes: '7',
//   ),
//   Video(
//     id: 'HvLb5gdUfDE',
//     author: currentUser,
//     title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
//     thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
//     duration: '1:52:12',
//     timestamp: DateTime(2020, 8, 7),
//     viewCount: '190K',
//     likes: '9.3K',
//     dislikes: '45',
//   ),
//   Video(
//     id: 'h-igXZCCrrc',
//     author: currentUser,
//     title: 'Flutter Chat UI Tutorial | Apps From Scratch',
//     thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
//     duration: '1:03:58',
//     timestamp: DateTime(2019, 10, 17),
//     viewCount: '358K',
//     likes: '20k',
//     dislikes: '85',
//   ),
// ];
final List<Video> videos = [
  Video(
    id: 'DY1LEvvWu8o',
    author: currentUser,
    title: 'Bugatti Vision GT vs Super Cars at Highlands',
    thumbnailUrl: 'https://i.ytimg.com/vi/bHWgc5MPnPA/0.jpg',
    duration: '25:03',
    timestamp: DateTime(2022, 2, 12),
    viewCount: '1.8M',
    likes: '73K',
    dislikes: '1.3K',
  ),
  Video(
    id: 'FSsELs8s3Wk',
    author: currentUser,
    title: '50 MILLION HYPERCAR GATHERING IN THE NETHERLANDS!',
    thumbnailUrl: 'https://i.ytimg.com/vi/hQYRDNl-lGI/0.jpg',
    duration: '20:39',
    timestamp: DateTime(2022, 2, 9),
    viewCount: '150K',
    likes: '4.2K',
    dislikes: '67',
  ),
  Video(
    id: 'IlgNOkwAcyw',
    author: currentUser,
    title:
        '2022 Ford Bronco Raptor vs. 2021 Jeep Wrangler Rubicon 392 | Off-Road Drag Race!',
    thumbnailUrl: 'https://i.ytimg.com/vi/7WZ-MPlOccg/0.jpg',
    duration: '15:20',
    timestamp: DateTime(2022, 2, 15),
    viewCount: '500K',
    likes: '18K',
    dislikes: '310',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'dV7yMTcOyB4',
    author: currentUser,
    title: 'The 2022 Hyundai Tucson N Line Is The Best Crossover SUV',
    thumbnailUrl: 'https://i.ytimg.com/vi/hQYRDNl-lGI/0.jpg',
    duration: '22:00',
    timestamp: DateTime(2022, 2, 17),
    viewCount: '500K',
    likes: '15K',
    dislikes: '311',
  ),
  Video(
    id: 'fO2SfcLRNcQ',
    author: currentUser,
    title: 'Rolls Royce restoration toy ',
    thumbnailUrl: 'https://i.ytimg.com/vi/7WZ-MPlOccg/0.jpg',
    duration: '22:47',
    timestamp: DateTime(2022, 2, 17),
    viewCount: '500K',
    likes: '15K',
    dislikes: '311',
  ),
  Video(
    id: 'W8SHvN2O-28',
    author: currentUser,
    title: 'Bugatti Vision GT vs Super Cars at Highlands',
    thumbnailUrl: 'https://i.ytimg.com/vi/bHWgc5MPnPA/0.jpg',
    duration: '12:13',
    timestamp: DateTime(2022, 2, 22),
    viewCount: '20K',
    likes: '2.2K',
    dislikes: '21',
  ),
];

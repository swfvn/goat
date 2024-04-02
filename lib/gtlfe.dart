import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Wizard Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WizardPage(),
    );
  }
}

class WizardPage extends StatefulWidget {
  @override
  _WizardPageState createState() => _WizardPageState();
}

class _WizardPageState extends State<WizardPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  List<Widget> _pages = [
    WizardStepPage(title: 'WELCOME', content: 'welcome to the real world. '
        'It is about an abused Malayali migrant worker employed in '
        'Saudi Arabia as a goatherd against his will.'
        'The novel depicts the life of Najeeb Muhammed,'
        ' an Indian emigrant going missing in Saudi Arabia. '
        'Najeebs dream was to work in the Persian Gulf states and earn enough'
        ' money to send back home.'
        ' But, he achieves his dream only to be propelled by a series of incidents'
        ' into a slavelike existence herding goats in the middle of the Saudi desert. In the '
        'end, Najeeb contrives a hazardous scheme to escape his desert prison. '
        'Penguin Books Indias introduction describes the novel as "the strange and bitter '
        'comedy of Najeeb’s life in the desert and a universal tale of loneliness and '
        'alienation.' ,
    ),
    WizardStepPage(title: 'Synopsis', content: 'Najeeb Muhammad, a young man from Arattupuzha in Haripad of the Kerala state,'
        ' is newly married and dreams of a better work in any of the Persian Gulf states.'
        ' After several endeavors, he finally gets an opportunity to work in Saudi Arabia.'
        ' However, at the King Khalid International Airport,'
        ' Riyadh he is clueless as what to do next and is taken away by an Arab man who'
        ' he believes to be his Arbab. The Arbab takes him to a cattle farm in the middle '
        'of a desert, confirming Najeebs worst nightmare. The Arbab hands Najeeb over to'
        ' the farm supervisor.Najeeb is then used as a slave laborer and shepherd and'
        ' is assigned to tend goats, sheep and camels for almost 3+1⁄2 years'
        ' in the remote deserts of Saudi Arabia. He is forced to do backbreaking work, '
        'kept half-hungry and is denied water to wash and suffers unimaginably.'
        ' The farms brutal supervisor keeps Najeeb in control with a gun and binoculars'
        ' and frequently beats him with a belt. And now Najeeb had to manage'
        ' this new fate without the bare human essentials.In a country where he doesn'
        't know the language, places or people, he is far away from any human '
        'interaction. Najeeb steadily starts to identify himself with the goats. '
        'He considers himself as one of them. His dreams, desires, avenges and hopes '
        'starts to fade away as his mindset has now become similar to that of the goats. '
        'He talks to them, eats with them, sleeps with them and virtually lives the life'
        ' of a goat. Although he has tried absconding multiple times, the supervisor '
        'catches him every time and punishes him by denying him food and water. '
        'He stops absconding when he finds the skeleton of the previous shepherd '
        'buried in the sand, who he thought had escaped. Even then, he keeps a ray'
        ' of hope which will bring freedom and end to his sufferings some day.'
        'Finally one night with the help of Ibrahim Khadiri, a Somalian worker in the '
        'neighboring farm, Najeeb Muhammed and his friend Hakeem escapes from the '
        'horrible life to freedom. But, the trio fumbles across the desert for days,'
        ' and young Hakeem dies of thirst and fatigue. But Ibrahim Khadiri and Najeeb '
        'keep moving on and the stumble across an Oasis where they manage to take rest'
        ' for a few days.   '
    ),
    WizardStepPage(title: ' Characters', content: '*Najeeb                                                                                                            '
        '                                                       '
        '*Hakeem                                                                                                                                '
        '                                                       '
        '*Ibrahim Khadiri                                                                                                                              '
        '                                                             '
        '*Arab owner                                                                                                                                      '
        '                                                                '
        '*Hameed                                                                                                                                            '
        '                                                                    '
        ' *Kunjikka                                                                                                                                                     '
        '                                                                           '
        '*Sainu                                                                                                                                                       '
        '                                                                                                ',
    ),
    WizardStepPage(title: 'Inspiration', content: 'Recounting his meeting with the real-life Najeeb,'
        ' Benyamin reminisces:But when I heard his tale, I knew this was the story I was'
        ' waiting to tell the world and I knew this had to be told.'
        ' Usually we only hear of stories of success from the Gulf.'
        ' But I wanted to talk about the many who lead lives of suffering and pain.The'
        ' reluctant Najeeb who wanted to forget his past had to be coaxed to recount'
        ' his story.'),
    WizardStepPage(title: 'Film Adaptation', content: 'Director Blessy had announced that'
        ' he would be making a film based on the book, titled Aadujeevitham. However, the au'
        'thor noted, "We are still in the discussion stage. Our'
        ' plans for a film had to be postponed when we realised that its production'
        ' cost would not be feasible for a Malayalam film. Now'
        ' we are planning something on a larger scale and Prithviraj Sukumaran will play'
        ' Najeebs role."[2] However, in late 2017, Blessy had confirmed the eponymous '
        'film adaptation of the book as a Malayalam film. After months of speculation, in'
        ' January 2018 composer A. R. Rahman confirmed in a press conference that he is'
        ' making a comeback to Malayalam" cinema as a composer with the film.[13][14] The'
        ' film released on 28 March 2024.'),
    WizardStepPage(title: 'External Links', content: 'Categories: Human rights abuses in'
        ' Saudi ArabiaNovels about slaveryMalayalam novels2008'
        ' Indian novelsNovels set in Saudi ArabiaKerala Sahitya'
        ' Akademi Award-winning works'),
    WizardStepPage(title: 'Conclusion', content: 'Indian migrant worker Najeeb Muhammed goes'
        ' to Saudi Arabia to earn money to send back home, but he finds '
        'himself living a slave-like existence herding goats in the middle of the desert.'),

  ];

  void _nextPage() {
    if (_currentPageIndex < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      setState(() {
        _currentPageIndex++;
      });
    }
  }

  void _previousPage() {
    if (_currentPageIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
      setState(() {
        _currentPageIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      restorationId: "aaaa",

      appBar: AppBar(
        leading: Image.asset("assets/images/goat.webp",
        ),
        backgroundColor: Colors.grey,
        title: Text('The Goat Life',
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 28),),
      ),
      body: Column(

        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: _pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 58.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: _previousPage,
                  child: Text('Previous',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: _nextPage,
                  child: Text('Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WizardStepPage extends StatelessWidget {
  final String title;
  final String content;

  const WizardStepPage({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

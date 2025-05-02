import 'package:flutter/material.dart';
import 'package:jobes/core/theming/styles.dart';

class TabBarViewDesign extends StatelessWidget {
  const TabBarViewDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: TabBarView(
          children: [
            // description
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  strutStyle: StrutStyle(
                    height: 1.5,
                  ),
                  ' We are the teams who create all of Facebook\'s products used by billions of people around the world. Want to build new features and improve existing products like Messenger, Video, Groups, News Feed, Search and more?',
                  style: TextStyles.font12Gray,
                ),
                Text('Responsibilities:', style: TextStyles.font14Gray),
                Text(
                    '${'•'} Full stack web/mobile application development Work with a variety of coding languages',
                    style: TextStyles.font12Gray),
                Text(
                    '${'•'}Create consumer products and features using internal programming language Hack',
                    style: TextStyles.font12Gray),
                Text(
                    '${'•'} Implement web or mobile interfaces using XHTML, CSS, and JavaScript',
                    style: TextStyles.font12Gray),
              ],
            ),
            // requirement
            SingleChildScrollView(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    strutStyle: StrutStyle(
                      height: 1.5,
                    ),
                    '${'•'}Master\'s degree in Design, Computer Science, Computer Interaction, or a related field.',
                    style: TextStyles.font12Gray,
                  ),
                  Text('${'•'}3 years of relevant industry experience.',
                      style: TextStyles.font12Gray),
                  Text(
                      '${'•'}Ability to lead and ideate products from scratch and improve features, all with a user-centered design process.',
                      style: TextStyles.font12Gray),
                  Text(
                      '${'•'}Skills in communicating and influencing product design strategy.',
                      style: TextStyles.font12Gray),
                  Text(
                      '${'•'}Excellent problem-solving skills and familiarity with technical constraints and limitations.',
                      style: TextStyles.font12Gray),
                  Text('${'•'}Experience designing across multiple platform.',
                      style: TextStyles.font12Gray),
                  Text('${'•'}Portfolio highlighting multiple projects.',
                      style: TextStyles.font12Gray),
                ],
              ),
            ),
            // about company
            SingleChildScrollView(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Google Job :', style: TextStyles.font14Gray),
                  Text(
                      strutStyle: StrutStyle(
                        height: 1.5,
                      ),
                      'Google is one of the world\'s leading technology companies, known for its innovation, cutting-edge products, and dynamic work culture. With a mission to organize the world’s information and make it universally accessible and useful, Google continuously pushes the boundaries of technology in various fields, including artificial intelligence, cloud computing, and digital advertising.',
                      style: TextStyles.font12Gray),
                  Text('Work Environment :', style: TextStyles.font14Gray),
                  Text(
                      strutStyle: StrutStyle(
                        height: 1.5,
                      ),
                      'At Google, employees experience a collaborative and inclusive environment where creativity and problem-solving are highly valued. The company fosters a culture of learning and experimentation, providing employees with opportunities to work on impactful projects that reach billions of users worldwide.',
                      style: TextStyles.font12Gray),
                  Text('Career Growth & Benefits :',
                      style: TextStyles.font14Gray),
                  Text(
                      strutStyle: StrutStyle(
                        height: 1.5,
                      ),
                      'Google offers a wide range of career paths, from software engineering to marketing and business development. Employees enjoy industry-leading benefits, including flexible work arrangements, wellness programs, stock options, and access to cutting-edge resources for personal and professional development.:',
                      style: TextStyles.font12Gray),
                  Text('Impact & Innovation :', style: TextStyles.font14Gray),
                  Text(
                      strutStyle: StrutStyle(
                        height: 1.5,
                      ),
                      'Google employees contribute to groundbreaking projects such as Google Search, Android, YouTube, and Google Cloud. The company encourages innovation through initiatives like "20% time," allowing employees to explore new ideas that can shape the future of technology.:',
                      style: TextStyles.font12Gray),
                ],
              ),
            ),
            // reviews
            SingleChildScrollView(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('⭐ Innovative Work Culture',
                      style: TextStyles.font14Gray),
                  Text(
                      '"Working at Google is an amazing experience! The company fosters a culture of innovation where employees are encouraged to think outside the box. The 20% time policy allows us to explore new ideas and work on personal projects that can turn into real products." – Software Engineer',
                      style: TextStyles.font12Gray),
                  Text('⭐ Great Work-Life Balance',
                      style: TextStyles.font14Gray),
                  Text(
                      '"Google truly cares about employee well-being. The flexible work schedule, remote work options, and on-site amenities like gyms and wellness programs make it easy to maintain a great work-life balance." –r',
                      style: TextStyles.font12Gray),
                  Text('⭐ Endless Learning Opportunities',
                      style: TextStyles.font14Gray),
                  Text(
                    '"At Google, you never stop learning. From internal training sessions to mentorship programs, there are countless opportunities for personal and professional growth. The company provides access to some of the best minds in the industry." – UX Designer',
                    style: TextStyles.font12Gray,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

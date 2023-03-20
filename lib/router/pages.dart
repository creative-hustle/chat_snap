import 'package:get/get.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/comment/comment_binding.dart';
import 'package:social_media_app/screen/comment/comment_screen.dart';
import 'package:social_media_app/screen/followers/followers_binding.dart';
import 'package:social_media_app/screen/followers/followers_screen.dart';
import 'package:social_media_app/screen/home/home_binding.dart';
import 'package:social_media_app/screen/home/home_screen.dart';
import 'package:social_media_app/screen/home/menu/menu.dart';
import 'package:social_media_app/screen/message/message_binding.dart';
import 'package:social_media_app/screen/message/message_screen.dart';
import 'package:social_media_app/screen/notification/notification_binding.dart';
import 'package:social_media_app/screen/notification/notification_screen.dart';
import 'package:social_media_app/screen/onboarding/onboarding_binding.dart';
import 'package:social_media_app/screen/onboarding/onboarding_screen.dart';
import 'package:social_media_app/screen/phonebook/phonebook_binding.dart';
import 'package:social_media_app/screen/phonebook/phonebook_screen.dart';
import 'package:social_media_app/screen/profile/profile_binding.dart';
import 'package:social_media_app/screen/profile/profile_screen.dart';
import 'package:social_media_app/screen/signin/signing_binding.dart';
import 'package:social_media_app/screen/signin/signing_screen.dart';

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouterName.signing,
        page: () => const SigningScreen(),
        binding: SigningBinding(),
      ),
      //onboarding
      GetPage(
        name: RouterName.onboarding,
        page: () => const OnBoardingScreen(),
        binding: OnBoardingBinding(),
      ),
      GetPage(
        name: RouterName.home,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: RouterName.menu,
        page: () => const MenuScreen(),
        binding: HomeBinding(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: RouterName.follower,
        page: () => const FollowerScreen(),
        binding: FollowersBinding(),
      ),
      GetPage(
        name: RouterName.message,
        page: () => const MessageScreen(),
        binding: MessageBinding(),
      ),
      GetPage(
        name: RouterName.phonebook,
        page: () => const PhoneBookScreen(),
        binding: PhoneBookBinding(),
      ),
      GetPage(
        name: RouterName.comment,
        page: () => const CommentScreen(),
        binding: CommentBinding(),
      ),
      GetPage(
        name: RouterName.notification,
        page: () => const NotificationScreen(),
        binding: NotificationBinding(),
      ),
      // GetPage(
      //   name: RouterName.chat,
      //   page: () => const ChatScreen(),
      //   binding: ChatBinding(),
      // ),
      GetPage(
        name: RouterName.profile,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
      ),

      // GetPage(
      //     name: RouterName.search,
      //     page: () => const SearchPage(),
      //     binding: SearchBinding()),
    ];
  }
}

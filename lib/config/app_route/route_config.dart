
import 'package:event_booking_app/features/reset_password/reset_password_screen.dart';
import 'package:event_booking_app/features/sign_in/sign_in_screen.dart';
import 'package:event_booking_app/features/sign_up/sign_up_screen.dart';
import 'package:event_booking_app/features/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';import 'package:go_router/go_router.dart';

import '../../core/navigator/global_keys.dart';

import '../../features/home/home_screen.dart';
import '../../features/main/pages/main_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/verification/verification_screen.dart';
import 'app_routes.dart';


final appRoute = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      name: AppRoutes.splash,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        child: const SplashPage(),
      ),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      name: AppRoutes.onboarding,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        child: const OnboardingScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.signIn,
      name: AppRoutes.signIn,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        child:  SignInScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.signUp,
      name: AppRoutes.signUp,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        // child: const SignUpScreen(),
        child:  SignUpScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.resetPassword,
      name: AppRoutes.resetPassword,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        // child: const SignUpScreen(),
        child:  ResetPasswordScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.varification,
      name: AppRoutes.varification,
      pageBuilder: (context, state) => FadeTransitionPage(
        key: state.pageKey,
        // child: const SignUpScreen(),
        child:  VerificationScreen(),
      ),
    ),
    // GoRoute(
    //   path: AppRoutes.logout,
    //   name: AppRoutes.logout,
    //   pageBuilder: (context, state) => FadeTransitionPage(
    //     key: state.pageKey,
    //     child: const LogoutScreen(),
    //   ),
    // ),


    StatefulShellRoute.indexedStack(
      builder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return MainScreen(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, state) => FadeTransitionPage(
                key: state.pageKey,
                child: const HomeScreen(),
              ),
            ),
          ],
        ),
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: AppRoutes.discover,
        //       pageBuilder: (context, state) => FadeTransitionPage(
        //         key: state.pageKey,
        //         child: const DiscoverPage(),
        //       ),
        //     ),
        //   ],
        // ),
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: AppRoutes.vipCard,
        //       pageBuilder: (context, state) => FadeTransitionPage(
        //         key: state.pageKey,
        //         child: const VipCardPage(),
        //       ),
        //     ),
        //   ],
        // ),
        //
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: AppRoutes.eventUpdated,
        //       pageBuilder: (context, state) => FadeTransitionPage(
        //         key: state.pageKey,
        //         child: EventPage(),
        //       ),
        //     ),
        //   ],
        // ),
        //
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: AppRoutes.profile,
        //       pageBuilder: (context, state) => FadeTransitionPage(
        //         key: state.pageKey,
        //         child: ProfileEventPage(),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    ),

  ],
);

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(_curveTween),
            child: child,
          ),
        );

  static final _curveTween = CurveTween(curve: Curves.easeIn);
}

// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';
import 'package:suv_ombor_monitoring/presentation/splash_page/bloc/splash_page_cubit/splash_page_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget implements AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashPageCubit()..loadSplash(),
      child: this,
    );
  }
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _initAnimations();
  }

  void _initAnimations() {
    // Status bar style will be set in build method using theme

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.6, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.6, curve: Curves.elasticOut),
      ),
    );

    _slideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 0.5),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.3, 1, curve: Curves.easeOutCubic),
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return BlocListener<SplashPageCubit, SplashPageState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: () {
            context.router.replace(const HomeRoute());
          },
        );
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: colorScheme.primary,
          statusBarIconBrightness: isDark ? Brightness.light : Brightness.light,
          statusBarBrightness: isDark ? Brightness.dark : Brightness.dark,
        ),
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colorScheme.primary,
                  colorScheme.primary.withOpacity(0.8),
                  colorScheme.secondary,
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  // Decorative circles
                  _buildDecorativeCircles(colorScheme),

                  // Main content
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo with animations
                        FadeTransition(
                          opacity: _fadeAnimation,
                          child: ScaleTransition(
                            scale: _scaleAnimation,
                            child: _buildLogo(colorScheme),
                          ),
                        ),

                        SizedBox(height: 3.h),

                        // App name with slide animation
                        SlideTransition(
                          position: _slideAnimation,
                          child: FadeTransition(
                            opacity: _fadeAnimation,
                            child: _buildAppName(theme),
                          ),
                        ),

                        SizedBox(height: 2.5.h),

                        // Tagline
                        SlideTransition(
                          position: _slideAnimation,
                          child: FadeTransition(
                            opacity: _fadeAnimation,
                            child: _buildTagline(theme),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Loading indicator at bottom
                  Positioned(
                    bottom: 8.h,
                    left: 0,
                    right: 0,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: _buildLoadingIndicator(theme),
                    ),
                  ),

                  // Version info
                  Positioned(
                    bottom: 3.h,
                    left: 0,
                    right: 0,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: _buildVersionInfo(theme),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDecorativeCircles(ColorScheme colorScheme) {
    return Stack(
      children: [
        // Top right circle
        Positioned(
          top: -10.h,
          right: -10.w,
          child: Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.secondary.withOpacity(0.1),
            ),
          ),
        ),
        // Bottom left circle
        Positioned(
          bottom: -15.h,
          left: -15.w,
          child: Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.primary.withOpacity(0.1),
            ),
          ),
        ),
        // Small circles
        Positioned(
          top: 20.h,
          left: 10.w,
          child: Container(
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.secondary.withOpacity(0.15),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogo(ColorScheme colorScheme) {
    return Container(
      width: 35.w,
      height: 35.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: colorScheme.secondary.withOpacity(0.3),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
          BoxShadow(
            color: colorScheme.primary.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/logo_app.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildAppName(ThemeData theme) {
    final colorScheme = theme.colorScheme;
    final onPrimaryColor = theme.brightness == Brightness.dark
        ? colorScheme.onPrimary
        : Colors.white;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            'ReservoSense',
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: onPrimaryColor,
              letterSpacing: 1,
              height: 1.2,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 1.5.h),
        Container(
          width: 15.w,
          height: 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                onPrimaryColor.withOpacity(0.5),
                onPrimaryColor,
                onPrimaryColor.withOpacity(0.5),
              ],
            ),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  Widget _buildTagline(ThemeData theme) {
    final onPrimaryColor = theme.brightness == Brightness.dark
        ? theme.colorScheme.onPrimary
        : Colors.white;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Text(
        'Suv omborini aqlli boshqarish tizimi',
        textAlign: TextAlign.center,
        maxLines: 2,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: onPrimaryColor.withOpacity(0.85),
          letterSpacing: 0.3,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator(ThemeData theme) {
    final onPrimaryColor = theme.brightness == Brightness.dark
        ? theme.colorScheme.onPrimary
        : Colors.white;

    return Column(
      children: [
        SizedBox(
          width: 9.w,
          height: 9.w,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(onPrimaryColor),
            strokeWidth: 4,
          ),
        ),
        SizedBox(height: 1.5.h),
        Text(
          LocaleKeys.messages_loading.tr(),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: onPrimaryColor.withOpacity(0.9),
          ),
        ),
      ],
    );
  }

  Widget _buildVersionInfo(ThemeData theme) {
    final onPrimaryColor = theme.brightness == Brightness.dark
        ? theme.colorScheme.onPrimary
        : Colors.white;

    return Text(
      'Version 1.0.0',
      textAlign: TextAlign.center,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: onPrimaryColor.withOpacity(0.8),
        letterSpacing: 0.5,
        fontWeight: FontWeightManager.light,
      ),
    );
  }
}

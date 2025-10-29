// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use, discarded_futures

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:suv_ombor_monitoring/core/core.dart';

@RoutePage()
class SignInPage extends StatefulWidget implements AutoRouteWrapper {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: instance<SignInPageBloc>(),
      child: this,
    );
  }
}

class _SignInPageState extends State<SignInPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberMe = false;

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Set status bar style
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0, 0.6, curve: Curves.easeOut),
      ),
    );

    _slideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 0.3),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.3, 1, curve: Curves.easeOut),
          ),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInPageBloc, SignInPageState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            // Show loading dialog
            _showLoadingDialog();
          },
          loaded: (response) {
            // Close loading dialog
            Navigator.of(context, rootNavigator: true).pop();

            // Show success dialog
            _showSuccessDialog();
          },
          error: (message) {
            // Close loading dialog if open
            if (Navigator.of(context).canPop()) {
              Navigator.of(context, rootNavigator: true).pop();
            }

            // Show error dialog
            _showErrorDialog(message);
          },
          orElse: () {},
        );
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: AppColors.backgroundPrimary,
          body: Stack(
            children: [
              // Gradient Background Header
              _buildGradientHeader(),

              // Main Content
              SafeArea(
                child: Column(
                  children: [
                    // App Bar
                    _buildAppBar(),

                    // Form Content
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: FadeTransition(
                          opacity: _fadeAnimation,
                          child: SlideTransition(
                            position: _slideAnimation,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 2.h),

                                // Logo
                                _buildLogo(),

                                SizedBox(height: 4.h),

                                // Welcome Text
                                _buildWelcomeText(),

                                SizedBox(height: 1.h),

                                // Subtitle
                                _buildSubtitle(),

                                SizedBox(height: 4.h),

                                // Login Form
                                _buildLoginForm(),

                                SizedBox(height: 2.h),

                                // Remember Me Checkbox
                                _buildRememberMe(),

                                SizedBox(height: 3.h),

                                // Sign In Button
                                _buildSignInButton(),

                                SizedBox(height: 2.h),

                                // Forgot Password
                                _buildForgotPassword(),

                                SizedBox(height: 3.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientHeader() {
    return Container(
      height: 25.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary900,
            AppColors.primary700,
            AppColors.accent600,
          ],
          stops: [0.0, 0.6, 1.0],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        children: [
          InkWell(
            onTap: () => context.router.pop(),
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.backgroundSecondary,
                size: 20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Container(
        width: 30.w,
        height: 30.w,
        padding: EdgeInsets.all(3.w),
        decoration: BoxDecoration(
          color: AppColors.backgroundSecondary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary900.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Image.asset(
          'assets/images/logo_app.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Text(
      LocaleKeys.welcome_sign_in.tr(),
      style: TextStyle(
        fontSize: FontSize.s28,
        fontWeight: FontWeightManager.bold,
        color: AppColors.neutralDark900,
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Hisobingizga kirish uchun ma\'lumotlaringizni kiriting',
      style: TextStyle(
        fontSize: FontSize.s14,
        fontWeight: FontWeightManager.regular,
        color: AppColors.neutralDark600,
        height: 1.4,
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Username Field
          Text(
            LocaleKeys.username.tr(),
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.semiBold,
              color: AppColors.neutralDark800,
            ),
          ),
          SizedBox(height: 1.h),
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
              hintText: 'Foydalanuvchi nomingizni kiriting',
              prefixIcon: Icon(
                Icons.person_outline,
                color: AppColors.neutralDark600,
                size: 22.sp,
              ),
              filled: true,
              fillColor: AppColors.backgroundSecondary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.neutralLight700,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.neutralLight700,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.primary900,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.statusError,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.statusError,
                  width: 2,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 1.8.h,
              ),
            ),
            style: TextStyle(
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.regular,
              color: AppColors.neutralDark900,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return LocaleKeys.validation_required.tr();
              }
              return null;
            },
          ),

          SizedBox(height: 2.5.h),

          // Password Field
          Text(
            LocaleKeys.password.tr(),
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.semiBold,
              color: AppColors.neutralDark800,
            ),
          ),
          SizedBox(height: 1.h),
          TextFormField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: 'Parolingizni kiriting',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: AppColors.neutralDark600,
                size: 22.sp,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: AppColors.neutralDark600,
                  size: 22.sp,
                ),
              ),
              filled: true,
              fillColor: AppColors.backgroundSecondary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.neutralLight700,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.neutralLight700,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.primary900,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.statusError,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: AppColors.statusError,
                  width: 2,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 1.8.h,
              ),
            ),
            style: TextStyle(
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.regular,
              color: AppColors.neutralDark900,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return LocaleKeys.validation_required.tr();
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton() {
    return BlocBuilder<SignInPageBloc, SignInPageState>(
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return SizedBox(
          width: double.infinity,
          height: 6.h,
          child: ElevatedButton(
            onPressed: isLoading ? null : _handleSignIn,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary900,
              foregroundColor: AppColors.backgroundSecondary,
              disabledBackgroundColor: AppColors.neutralLight700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              elevation: 3,
              shadowColor: AppColors.primary900.withOpacity(0.3),
            ),
            child: isLoading
                ? SizedBox(
                    width: 5.w,
                    height: 5.w,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.backgroundSecondary,
                      ),
                    ),
                  )
                : Text(
                    LocaleKeys.welcome_sign_in.tr(),
                    style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.semiBold,
                      letterSpacing: 0.5,
                    ),
                  ),
          ),
        );
      },
    );
  }

  Widget _buildForgotPassword() {
    return Center(
      child: TextButton(
        onPressed: () {
          // TODO: Implement forgot password
          _showContactInfoDialog();
        },
        child: Text(
          'Parolingizni unutdingizmi?',
          style: TextStyle(
            fontSize: FontSize.s14,
            fontWeight: FontWeightManager.medium,
            color: AppColors.primary900,
          ),
        ),
      ),
    );
  }

  void _handleSignIn() {
    if (_formKey.currentState!.validate()) {
      // Trigger BLoC event
      context.read<SignInPageBloc>().add(
        SignInPageEvent.signInButtonPressed(
          username: _usernameController.text.trim(),
          password: _passwordController.text,
          rememberMe: _rememberMe,
        ),
      );
    }
  }

  Widget _buildRememberMe() {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: _rememberMe,
            onChanged: (value) {
              setState(() {
                _rememberMe = value ?? false;
              });
            },
            activeColor: AppColors.primary900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Text(
          'Meni eslab qol',
          style: TextStyle(
            fontSize: FontSize.s14,
            fontWeight: FontWeightManager.regular,
            color: AppColors.neutralDark700,
          ),
        ),
      ],
    );
  }

  void _showLoadingDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondary,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary900.withOpacity(0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Animated loading indicator
                  Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.primary900,
                          AppColors.primary700,
                          AppColors.accent600,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.backgroundSecondary,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 3.h),

                  // Loading text
                  Text(
                    'Tizimga kirilmoqda...',
                    style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.semiBold,
                      color: AppColors.primary900,
                    ),
                  ),

                  SizedBox(height: 1.h),

                  Text(
                    'Iltimos kuting',
                    style: TextStyle(
                      fontSize: FontSize.s14,
                      fontWeight: FontWeightManager.regular,
                      color: AppColors.neutralDark600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showSuccessDialog() {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondary,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.statusSuccess.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Success icon
                  Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: BoxDecoration(
                      color: AppColors.statusSuccess.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.check_circle,
                      size: 15.w,
                      color: AppColors.statusSuccess,
                    ),
                  ),

                  SizedBox(height: 3.h),

                  // Success text
                  Text(
                    'Tizimga kirdingiz!',
                    style: TextStyle(
                      fontSize: FontSize.s20,
                      fontWeight: FontWeightManager.bold,
                      color: AppColors.statusSuccess,
                    ),
                  ),

                  SizedBox(height: 1.h),

                  Text(
                    'Xush kelibsiz',
                    style: TextStyle(
                      fontSize: FontSize.s14,
                      fontWeight: FontWeightManager.regular,
                      color: AppColors.neutralDark600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    // Navigate to home after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(
          context,
          rootNavigator: true,
        ).pop(); // Close success dialog
        context.router.replaceAll([const HomeRoute()]);
      }
    });
  }

  void _showErrorDialog(String message) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: AppColors.statusError.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.error_outline,
                  color: AppColors.statusError,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 3.w),
              Expanded(
                child: Text(
                  'Xatolik yuz berdi',
                  style: TextStyle(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeightManager.bold,
                    color: AppColors.statusError,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: AppColors.statusError.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.statusError.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 18.sp,
                        color: AppColors.statusError,
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: FontSize.s14,
                            fontWeight: FontWeightManager.regular,
                            color: AppColors.neutralDark800,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Iltimos, ma\'lumotlaringizni tekshirib qaytadan urinib ko\'ring.',
                  style: TextStyle(
                    fontSize: FontSize.s12,
                    fontWeight: FontWeightManager.regular,
                    color: AppColors.neutralDark600,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.statusError,
                  foregroundColor: AppColors.backgroundSecondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                ),
                child: Text(
                  'Yopish',
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showContactInfoDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: AppColors.primary900.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.support_agent,
                  color: AppColors.primary900,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 3.w),
              Expanded(
                child: Text(
                  'Yordam kerakmi?',
                  style: TextStyle(
                    fontSize: FontSize.s18,
                    fontWeight: FontWeightManager.bold,
                    color: AppColors.primary900,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parolingizni tiklash yoki boshqa muammolar uchun aloqa bo\'limi bilan bog\'laning:\n',
                  style: TextStyle(
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.regular,
                    color: AppColors.neutralDark700,
                    height: 1.5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundPrimary,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.primary900.withOpacity(0.2),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactRow(
                        Icons.phone,
                        LocaleKeys.welcome_sign_up_info_3.tr(),
                      ),
                      SizedBox(height: 1.h),
                      _buildContactRow(
                        Icons.email,
                        LocaleKeys.welcome_sign_up_info_4.tr(),
                      ),
                      SizedBox(height: 1.h),
                      _buildContactRow(
                        Icons.send,
                        LocaleKeys.welcome_sign_up_info_5.tr(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary900,
                  foregroundColor: AppColors.backgroundSecondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                ),
                child: Text(
                  'Yopish',
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 18.sp,
          color: AppColors.primary900,
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.regular,
              color: AppColors.neutralDark800,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, document_ignores, deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:suv_ombor_monitoring/core/core.dart' hide LocaleKeys;
import 'package:suv_ombor_monitoring/presentation/translations/locale_keys.g.dart';

@RoutePage()
class StationDataPage extends StatefulWidget implements AutoRouteWrapper {
  const StationDataPage({required this.item, super.key});
  final LastData item;

  @override
  State<StationDataPage> createState() => _StationDataPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _StationDataPageState extends State<StationDataPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> get myTabs => <Tab>[
    Tab(
      child: Text(
        LocaleKeys.station_data_tabs_hourly.tr(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Tab(
      child: Text(
        LocaleKeys.station_data_tabs_yesterday.tr(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Tab(
      child: Text(
        LocaleKeys.station_data_tabs_monthly.tr(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Tab(
      child: Text(
        LocaleKeys.station_data_tabs_yearly.tr(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Tab(
      child: Text(
        LocaleKeys.station_data_tabs_custom.tr(),
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item.name,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colorScheme.onPrimary,
          ),
        ),
        backgroundColor: AppColors.primary900,
        foregroundColor: AppColors.backgroundSecondary,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: AppColors.backgroundSecondary,
          labelColor: AppColors.backgroundSecondary,
          unselectedLabelColor: AppColors.backgroundSecondary.withOpacity(0.6),
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BlocProvider.value(
            value: instance<GetHourlyDataBloc>(),
            child: HourlyDataWidget(stationId: widget.item.id),
          ),
          BlocProvider.value(
            value: instance<GetYesterdayDataBloc>(),
            child: YesterdayDataWidget(stationId: widget.item.id),
          ),
          BlocProvider.value(
            value: instance<GetDailyDataBloc>(),
            child: MonthlyDataWidget(stationId: widget.item.id),
          ),
          BlocProvider.value(
            value: instance<GetMonthlyDataBloc>(),
            child: YearlyDataWidget(stationId: widget.item.id),
          ),
          BlocProvider.value(
            value: instance<GetCustomDataBloc>(),
            child: CustomDataWidget(stationId: widget.item.id),
          ),
        ],
      ),
    );
  }
}

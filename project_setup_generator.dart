// ignore_for_file: cascade_invocations, lines_longer_than_80_chars, document_ignores

import 'dart:io';

void main(List<String> args) {
  // make asset   folder
  final assetFolder = Directory('assets');
  if (!assetFolder.existsSync()) {
    assetFolder.createSync();
  }
  // make images , icons , fonts json translation, lottie json folder in asset folder

  final imagesFolder = Directory('assets/images');
  if (!imagesFolder.existsSync()) {
    imagesFolder.createSync();
  }

  final iconsFolder = Directory('assets/icons');
  if (!iconsFolder.existsSync()) {
    iconsFolder.createSync();
  }

  final fontsFolder = Directory('assets/fonts');
  if (!fontsFolder.existsSync()) {
    fontsFolder.createSync();
  }

  final jsonFolder = Directory('assets/json');
  if (!jsonFolder.existsSync()) {
    jsonFolder.createSync();
  }

  final translationFolder = Directory('assets/translations');
  if (!translationFolder.existsSync()) {
    translationFolder.createSync();
  }

  final lottieFolder = Directory('assets/lottie');
  if (!lottieFolder.existsSync()) {
    lottieFolder.createSync();
  }

  //make apps, data core di domain, presentation folder in lib folder
  final appFolder = Directory('lib/apps');
  if (!appFolder.existsSync()) {
    appFolder.createSync();
  }

  final dataFolder = Directory('lib/data');
  if (!dataFolder.existsSync()) {
    dataFolder.createSync();
  }

  final coreFolder = Directory('lib/core');
  if (!coreFolder.existsSync()) {
    coreFolder.createSync();
  }

  final diFolder = Directory('lib/di');
  if (!diFolder.existsSync()) {
    diFolder.createSync();

    //make index.dart file in di folder
    final indexFile = File('lib/di/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final domainFolder = Directory('lib/domain');
  if (!domainFolder.existsSync()) {
    domainFolder.createSync();
  }

  final presentationFolder = Directory('lib/presentation');
  if (!presentationFolder.existsSync()) {
    presentationFolder.createSync();
  }

  // make app.dart inn apps folder
  final appFile = File('lib/apps/app.dart');
  if (!appFile.existsSync()) {
    appFile.createSync();
  }

  // make configs  constants errors extensions mixins routes services state_manager theme translations utils  validator folder in core folder
  final configsFolder = Directory('lib/core/configs');
  if (!configsFolder.existsSync()) {
    configsFolder.createSync();
    // make index.dart file in configs folder
    final indexFile = File('lib/core/configs/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final constantsFolder = Directory('lib/core/constants');

  if (!constantsFolder.existsSync()) {
    constantsFolder.createSync();
    // make index.dart file in constants folder
    final indexFile = File('lib/core/constants/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final errorsFolder = Directory('lib/core/errors');
  if (!errorsFolder.existsSync()) {
    errorsFolder.createSync();

    //failures file in errors folder
    final failuresFile = File('lib/core/errors/failures.dart');
    if (!failuresFile.existsSync()) {
      failuresFile.createSync();
      failuresFile.writeAsStringSync(
        'class Failure {\n final String message;\nfinal int code; \nFailure({required this.code, \nrequired this.message,});\n}',
      );
    }

    // make index.dart file in errors folder
    final indexFile = File('lib/core/errors/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();

      // index file write export failures file in index.dart
      indexFile.writeAsStringSync("export 'failures.dart';");
    }
  }

  final extensionsFolder = Directory('lib/core/extensions');
  if (!extensionsFolder.existsSync()) {
    extensionsFolder.createSync();
    // make index.dart file in extensions folder
    final indexFile = File('lib/core/extensions/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final mixinsFolder = Directory('lib/core/mixins');

  if (!mixinsFolder.existsSync()) {
    mixinsFolder.createSync();
    // make index.dart file in mixins folder
    final indexFile = File('lib/core/mixins/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final routesFolder = Directory('lib/core/routes');
  if (!routesFolder.existsSync()) {
    routesFolder.createSync();
    // make index.dart file in routes folder
    final indexFile = File('lib/core/routes/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final servicesFolder = Directory('lib/core/services');
  if (!servicesFolder.existsSync()) {
    servicesFolder.createSync();
    // make index.dart file in services folder

    //app_api folder in services folder
    final appApiFolder = Directory('lib/core/services/app_api');
    if (!appApiFolder.existsSync()) {
      appApiFolder.createSync();
      //app_api inner folder in app_api file
      final appApiInnerFolder = File('lib/core/services/app_api/app_api.dart');
      if (!appApiInnerFolder.existsSync()) {
        appApiInnerFolder.createSync();
      }

      // make index.dart file in app_api folder
      final indexFile = File('lib/core/services/app_api/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }

      // index file write export app_api file in index.dart
      indexFile.writeAsStringSync("export 'app_api.dart';");
    }
    //make app_preferences folder in services folder
    final appPreferencesFolder = Directory('lib/core/services/app_preferences');
    if (!appPreferencesFolder.existsSync()) {
      appPreferencesFolder.createSync();

      //app_preferences inner folder in app_preferences file

      final appPreferencesInnerFolder =
          File('lib/core/services/app_preferences/app_preferences.dart');
      if (!appPreferencesInnerFolder.existsSync()) {
        appPreferencesInnerFolder.createSync();
      }

      // make index.dart file in app_preferences folder
      final indexFile = File('lib/core/services/app_preferences/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }
      // index file write export app_preferences file in index.dart
      indexFile.writeAsStringSync("export 'app_preferences.dart';");
    }

    //make dio folder in services folder
    final dioFolder = Directory('lib/core/services/dio');
    if (!dioFolder.existsSync()) {
      dioFolder.createSync();
      //dio inner folder in dio file
      final dioInnerFolder = File('lib/core/services/dio/dio_factory.dart');
      if (!dioInnerFolder.existsSync()) {
        dioInnerFolder.createSync();
      }

      // make index.dart file in dio folder
      final indexFile = File('lib/core/services/dio/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }
      // index file write export dio file in index.dart
      indexFile.writeAsStringSync("export 'dio_factory.dart';");
    }

    //make network folder in services folder
    final networkFolder = Directory('lib/core/services/network');
    if (!networkFolder.existsSync()) {
      networkFolder.createSync();
      //network inner folder in network file
      final networkInnerFolder =
          File('lib/core/services/network/network_info.dart');
      if (!networkInnerFolder.existsSync()) {
        networkInnerFolder.createSync();
      }

      // make index.dart file in network folder
      final indexFile = File('lib/core/services/network/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }
      // index file write export network file in index.dart
      indexFile.writeAsStringSync("export 'network_info.dart';");
    }

    final indexFile = File('lib/core/services/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
      indexFile.writeAsStringSync(
        "export 'app_api/index.dart';\nexport 'app_preferences/index.dart';\nexport 'dio/index.dart';\nexport 'network/index.dart';",
      );
    }
  }

  final stateManagerFolder = Directory('lib/core/state_manager');
  if (!stateManagerFolder.existsSync()) {
    stateManagerFolder.createSync();
    // make index.dart file in state_manager folder
    final indexFile = File('lib/core/state_manager/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final themeFolder = Directory('lib/core/theme');
  if (!themeFolder.existsSync()) {
    themeFolder.createSync();

    //make  app_dark_theme folder in theme  file
    final appDarkThemeFolder = File('lib/core/theme/app_dark_theme.dart');
    appDarkThemeFolder.createSync();

    //make  app_light_theme folder in theme  file
    final appLightThemeFolder = File('lib/core/theme/app_light_theme.dart');
    appLightThemeFolder.createSync();

    // make index.dart file in theme folder
    final indexFile = File('lib/core/theme/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }

    // index file write export app_dark_theme and app_light_theme file in index.dart
    indexFile.writeAsStringSync(
      "export 'app_dark_theme.dart';\nexport 'app_light_theme.dart';",
    );
  }

  final translationsFolder = Directory('lib/core/translations');

  if (!translationsFolder.existsSync()) {
    translationsFolder.createSync();
    // make index.dart file in translations folder
    final indexFile = File('lib/core/translations/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final utilsFolder = Directory('lib/core/utils');
  if (!utilsFolder.existsSync()) {
    utilsFolder.createSync();
    //make app_colors file in utils folder
    final appColorsFile = File('lib/core/utils/app_colors.dart');
    if (!appColorsFile.existsSync()) {
      appColorsFile.createSync();
    }

    //make app_fonts_manager file in utils folder
    final appFontsManagerFile = File('lib/core/utils/app_fonts_manager.dart');
    if (!appFontsManagerFile.existsSync()) {
      appFontsManagerFile.createSync();
    }

    //make app_styles_manager file in utils folder
    final appStylesManagerFile = File('lib/core/utils/app_styles_manager.dart');
    if (!appStylesManagerFile.existsSync()) {
      appStylesManagerFile.createSync();
    }

    //make base_use_case file in utils folder
    final baseUseCaseFile = File('lib/core/utils/base_use_case.dart');
    if (!baseUseCaseFile.existsSync()) {
      baseUseCaseFile.createSync();
      baseUseCaseFile.writeAsStringSync(
        'abstract class BaseUseCase<In, Out> {\n Future<Either<Failure, Out>> call(In input);\n}',
      );
    }

    // make index.dart file in utils folder
    final indexFile = File('lib/core/utils/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
      // index file write export app_colors, app_fonts_manager, app_styles_manager, base_use_case file in index.dart
      indexFile.writeAsStringSync(
        "export 'app_colors.dart';\nexport 'app_fonts_manager.dart';\nexport 'app_styles_manager.dart';\nexport 'base_use_case.dart';",
      );
    }
  }

  final validatorFolder = Directory('lib/core/validator');

  if (!validatorFolder.existsSync()) {
    validatorFolder.createSync();
    // make index.dart file in validator folder
    final indexFile = File('lib/core/validator/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }
  // datasources, models, repositories, request, response folder in data folder
  final datasourcesFolder = Directory('lib/data/datasources');
  if (!datasourcesFolder.existsSync()) {
    datasourcesFolder.createSync();
    // make local_data_source and remote_data_source folder in datasources folder
    final localDataSourceFolder =
        Directory('lib/data/datasources/local_data_source');
    if (!localDataSourceFolder.existsSync()) {
      localDataSourceFolder.createSync();
      // make index.dart file in local_data_source folder
      final indexFile =
          File('lib/data/datasources/local_data_source/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }
    }

    final remoteDataSourceFolder =
        Directory('lib/data/datasources/remote_data_source');

    if (!remoteDataSourceFolder.existsSync()) {
      remoteDataSourceFolder.createSync();
      // make index.dart file in remote_data_source folder
      final indexFile =
          File('lib/data/datasources/remote_data_source/index.dart');
      if (!indexFile.existsSync()) {
        indexFile.createSync();
      }
    }
    //make index.dart  and write local_data_source and remote_data_source in index.dart file in datasources folder
    final indexFile = File('lib/data/datasources/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
      indexFile.writeAsStringSync(
        "export 'local_data_source/index.dart';\nexport 'remote_data_source/index.dart';",
      );
    }
  }

  //make models folder in data folder
  final modelsFolder = Directory('lib/data/models');
  if (!modelsFolder.existsSync()) {
    modelsFolder.createSync();
    // make index.dart file in models folder
    final indexFile = File('lib/data/models/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  //make repositories folder in data folder
  final repositoriesFolder = Directory('lib/data/repositories');
  if (!repositoriesFolder.existsSync()) {
    repositoriesFolder.createSync();
    // make index.dart file in repositories folder
    final indexFile = File('lib/data/repositories/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  //make request folder in data folder
  final requestFolder = Directory('lib/data/request');
  if (!requestFolder.existsSync()) {
    requestFolder.createSync();
    // make index.dart file in request folder
    final indexFile = File('lib/data/request/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  //make response folder in data folder
  final responseFolder = Directory('lib/data/response');

  if (!responseFolder.existsSync()) {
    responseFolder.createSync();
    // make index.dart file in response folder
    final indexFile = File('lib/data/response/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  //make index.dart  and write local_data_source and remote_data_source in index.dart file in datasources folder

  final indexDataFile = File('lib/data/index.dart');
  if (!indexDataFile.existsSync()) {
    indexDataFile.createSync();
    indexDataFile.writeAsStringSync(
      "export 'datasources/index.dart';\nexport 'models/index.dart';\nexport 'repositories/index.dart';\nexport 'request/index.dart';\nexport 'response/index.dart';",
    );
  }

  // make entities, repositories, usecases folder in domain folder
  final entitiesFolder = Directory('lib/domain/entities');
  if (!entitiesFolder.existsSync()) {
    entitiesFolder.createSync();
    // make index.dart file in entities folder
    final indexFile = File('lib/domain/entities/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final repositoriesDomainFolder = Directory('lib/domain/repositories');
  if (!repositoriesDomainFolder.existsSync()) {
    repositoriesDomainFolder.createSync();
    // make index.dart file in repositories folder
    final indexFile = File('lib/domain/repositories/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  final usecasesFolder = Directory('lib/domain/usecases');

  if (!usecasesFolder.existsSync()) {
    usecasesFolder.createSync();
    // make index.dart file in usecases folder
    final indexFile = File('lib/domain/usecases/index.dart');
    if (!indexFile.existsSync()) {
      indexFile.createSync();
    }
  }

  // make index.dart  and write entities, repositories, usecases in index.dart file in domain folder

  final indexDomainFile = File('lib/domain/index.dart');

  if (!indexDomainFile.existsSync()) {
    indexDomainFile.createSync();
    indexDomainFile.writeAsStringSync(
      "export 'entities/index.dart';\nexport 'repositories/index.dart';\nexport 'usecases/index.dart';",
    );
  }

  //make index.dart file in presentation folder

  final indexPresentationFile = File('lib/presentation/index.dart');

  if (!indexPresentationFile.existsSync()) {
    indexPresentationFile.createSync();
  }
  // make core.dart file in core folder

  final coreFile = File('lib/core/core.dart');
  if (!coreFile.existsSync()) {
    coreFile.createSync();
    //all index file write core.dart file in core folder
    final indexCoreFile = File('lib/core/core.dart');

    indexCoreFile.writeAsStringSync(
      "export 'configs/index.dart';\nexport 'constants/index.dart';\nexport 'errors/index.dart';\nexport 'extensions/index.dart';\nexport 'mixins/index.dart';\nexport 'routes/index.dart';\nexport 'services/index.dart';\nexport 'state_manager/index.dart';\nexport 'theme/index.dart';\nexport 'translations/index.dart';\nexport 'utils/index.dart';\nexport 'validator/index.dart';\n",
    );
    indexCoreFile.writeAsStringSync(
      "export '../domain/index.dart';\nexport '../data/index.dart';\nexport '../di/index.dart';\nexport '../presentation/index.dart';",
      mode: FileMode.append,
    );
  }
}

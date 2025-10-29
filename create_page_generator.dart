// ignore_for_file: cascade_invocations, document_ignores, avoid_print

import 'dart:io';

void main(List<String> args) async {
  // Validate arguments
  if (args.isEmpty) {
    print('❌ Error: Page name is required!');
    print('📝 Usage: dart run create_page_generator.dart <page_name>');
    print('📝 Example: dart run create_page_generator.dart settings_page');
    exit(1);
  }

  final pageName = args[0];

  // Validate page name format
  if (!RegExp(r'^[a-z][a-z0-9_]*$').hasMatch(pageName)) {
    print('❌ Error: Invalid page name format!');
    print(
      '📝 Page name must start with lowercase letter and contain only lowercase letters, numbers, and underscores',
    );
    exit(1);
  }

  print('🚀 Creating page: $pageName');

  // Check if presentation folder exists
  final presentationFolder = Directory('lib/presentation');
  if (!presentationFolder.existsSync()) {
    print('❌ Error: lib/presentation folder not found!');
    print('💡 Tip: Run project_setup_generator.dart first');
    exit(1);
  }

  // Check if page already exists
  final pageFolder = Directory('lib/presentation/$pageName');
  if (pageFolder.existsSync()) {
    print('⚠️  Warning: Page "$pageName" already exists!');
    stdout.write('Do you want to overwrite it? (y/N): ');
    final answer = stdin.readLineSync()?.toLowerCase();
    if (answer != 'y' && answer != 'yes') {
      print('❌ Operation cancelled.');
      exit(0);
    }
    print('🔄 Overwriting existing page...');
  }

  // Create page folder
  pageFolder.createSync(recursive: true);
  print('✅ Created folder: lib/presentation/$pageName');

  // Create bloc, view and widget folders
  final blocFolder = Directory('lib/presentation/$pageName/bloc');
  blocFolder.createSync(recursive: true);
  print('✅ Created folder: lib/presentation/$pageName/bloc');

  final blocIndexFile = File('lib/presentation/$pageName/bloc/index.dart');
  blocIndexFile.createSync(recursive: true);
  print('✅ Created file: bloc/index.dart');

  final viewFolder = Directory('lib/presentation/$pageName/view');
  viewFolder.createSync(recursive: true);
  print('✅ Created folder: lib/presentation/$pageName/view');

  final widgetFolder = Directory('lib/presentation/$pageName/widgets');
  widgetFolder.createSync(recursive: true);
  print('✅ Created folder: lib/presentation/$pageName/widgets');

  // Create widgets index file
  final widgetIndexFile = File('lib/presentation/$pageName/widgets/index.dart');
  widgetIndexFile.createSync(recursive: true);
  print('✅ Created file: widgets/index.dart');

  // Create main page file
  print('📄 Creating main page file...');
  final pageNameFile = File('lib/presentation/$pageName/view/$pageName.dart');
  pageNameFile.createSync(recursive: true);

  final pageNamePascalCase = convertToPascalCase(pageName);
  final content =
      """
// ignore_for_file: public_member_api_docs, document_ignores

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class $pageNamePascalCase extends StatefulWidget implements AutoRouteWrapper {
  const $pageNamePascalCase({super.key});

  @override
  State<$pageNamePascalCase> createState() => _${pageNamePascalCase}State();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _${pageNamePascalCase}State extends State<$pageNamePascalCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$pageNamePascalCase'),
      ),
      body: const Center(
        child: Text('$pageNamePascalCase Page'),
      ),
    );
  }
}
""";
  pageNameFile.writeAsStringSync(content);
  print('✅ Created file: view/$pageName.dart');

  // Create page index file
  final indexFile = File('lib/presentation/$pageName/index.dart');
  indexFile.createSync(recursive: true);
  indexFile.writeAsStringSync(
    "export 'view/$pageName.dart';\nexport 'bloc/index.dart';\nexport 'widgets/index.dart';",
  );
  print('✅ Created file: lib/presentation/$pageName/index.dart');

  // Update presentation index file
  final presentationIndexFile = File('lib/presentation/index.dart');
  if (!presentationIndexFile.existsSync()) {
    presentationIndexFile.createSync(recursive: true);
  }

  // Check if already exported to avoid duplicates
  final existingContent = presentationIndexFile.readAsStringSync();
  if (!existingContent.contains("export '$pageName/index.dart';")) {
    presentationIndexFile.writeAsStringSync(
      "export '$pageName/index.dart';\n",
      mode: FileMode.append,
    );
    print('✅ Updated presentation/index.dart');
  }

  print('\n🎉 Page created successfully!');
  print('📁 Page location: lib/presentation/$pageName/');
  print('\n⏳ Running build_runner to generate routes...');

  await buildRunnerAutoRoute();
}

Future<void> buildRunnerAutoRoute() async {
  try {
    final command = [
      'flutter',
      'packages',
      'pub',
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
    ];

    print('Running: ${command.join(' ')}\n');

    final result = await Process.run(
      command.first,
      command.sublist(1),
      runInShell: true,
    );

    if (result.exitCode == 0) {
      print('\n✅ Build runner completed successfully!');
      print(result.stdout);
    } else {
      print('⚠️  Build runner finished with warnings:');
      print(result.stdout);
      if (result.stderr.toString().isNotEmpty) {
        print('Errors:\n${result.stderr}');
      }
    }
  } catch (e) {
    print('❌ Error running build_runner: $e');
    print(
      '💡 You may need to run it manually: flutter pub run build_runner build --delete-conflicting-outputs',
    );
  }
}

String convertToPascalCase(String input) {
  return input
      .split('_')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join();
}

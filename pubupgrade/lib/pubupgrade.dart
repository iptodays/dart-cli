/*
 * @Author: A kingiswinter@gmail.com
 * @Date: 2025-02-22 14:17:31
 * @LastEditors: A kingiswinter@gmail.com
 * @LastEditTime: 2025-02-22 16:02:46
 * @FilePath: /pubupgrade/lib/pubupgrade.dart
 * 
 * Copyright (c) 2025 by A kingiswinter@gmail.com, All Rights Reserved.
 */
import 'dart:io';

import 'package:cli_util/cli_logging.dart';
import 'package:path/path.dart' as p;
import 'package:process_run/process_run.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

void upgraded() async {
  var logger = Logger.standard();
  List<ProcessResult> resuls = Shell().runSync('pwd');
  if (resuls.isEmpty) {
    logger.stdout('No pubspec.yaml found.');
    return;
  }
  String path = p.join(resuls.first.outText, 'pubspec.yaml');
  File file = File(path);
  if (!file.existsSync()) {
    logger.stdout('No pubspec.yaml found.');
    return;
  }
  String pubspecStr = file.readAsStringSync();
  PubClient client = PubClient();
  Pubspec pubspec = Pubspec.parse(pubspecStr);
  for (var dependencie in pubspec.dependencies.entries) {
    if (dependencie.value is HostedDependency) {
      String version =
          (dependencie.value as HostedDependency).version.toString();
      if (!version.contains('^')) {
        continue;
      }
      var progress = logger.progress('Checking [${dependencie.key}]...');
      PubPackage package = await client.packageInfo(dependencie.key);
      if (version.replaceFirst('^', '') != package.latest.version) {
        logger.stdout(
          '${dependencie.key} can be upgraded to ${package.latest.version}.',
        );
        String replace = '${dependencie.key}: ^${package.latest.version}';
        pubspecStr = pubspecStr.replaceAll(
          '${dependencie.key}: $version',
          replace,
        );
      }
      progress.finish(showTiming: true);
    }
  }
  await file.writeAsString(pubspecStr);
  logger.stdout('All ${logger.ansi.emphasized('done')}.');
}

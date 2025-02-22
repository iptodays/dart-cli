/*
 * @Author: A kingiswinter@gmail.com
 * @Date: 2025-02-22 14:17:31
 * @LastEditors: A kingiswinter@gmail.com
 * @LastEditTime: 2025-02-22 15:48:54
 * @FilePath: /pubupgrade/bin/pubupgrade.dart
 * 
 * Copyright (c) 2025 by A kingiswinter@gmail.com, All Rights Reserved.
 */
import 'dart:io';

import 'package:cli_util/cli_logging.dart';
import 'package:pubupgrade/pubupgrade.dart' as pubupgrade;

void main(List<String> arguments) {
  var logger = Logger.standard();
  logger.stdout('''
PUB UPGRADE
Dart Version: ${Platform.version}
CLI Version: 1.0.0
''');
  pubupgrade.upgraded();
}

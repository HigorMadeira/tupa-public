library tupa_dependencies_core;

//environments
export 'src/environments_variables.dart';
export 'src/device_os.dart';
export 'src/cryptography/encrypt.dart';
export 'src/cryptography/i_encrypt.dart';
export 'package:path_provider/path_provider.dart';
export 'package:extended_image/extended_image.dart';
//state management
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:dartz/dartz.dart' hide Bind, State;
export 'package:path/path.dart' hide Context, context;

//logger
export 'src/logger/logger.dart';
export 'src/logger/i_logger.dart';
// Backend
export 'package:supabase/supabase.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:bloc/bloc.dart';
//local storage
export 'src/local_storage/i_local_storage.dart';
export 'src/local_storage/shared_preferences_local_storage.dart';

#!/bin/bash
set -e

# check required inputs. Abort script with exit code 1 if any of the inputs are not set
if [[ -z "$INPUT_INPUT_PATH" ]] || [[ -z "$INPUT_OUTPUT_PATH" ]]; then
  echo "Missing arguments: Please provide input_path and output_path arguments."
  exit 1
else
  echo "Input path set to: $INPUT_INPUT_PATH"
  echo "Output path set to: $INPUT_OUTPUT_PATH"
fi

check_compact_option() {
  if [[ -z "$INPUT_COMPACT" ]]; then
    echo ""
  else
    echo "--compact $(echo $INPUT_COMPACT)"
  fi
}
compact_option=$(check_compact_option)

check_control_flow_flattening() {
  if [[ -z "$INPUT_CONTROL_FLOW_FLATTENING" ]]; then
    echo ""
  else
    echo "--control-flow-flattening $(echo $INPUT_CONTROL_FLOW_FLATTENING)"
  fi
}
control_flow_flattening=$(check_control_flow_flattening)

check_control_flow_flattening_threshold() {
  if [[ -z "$INPUT_CONTROL_FLOW_FLATTENING_THRESHOLD" ]]; then
    echo ""
  else
    echo "--control-flow-flattening-threshold $(echo $INPUT_CONTROL_FLOW_FLATTENING_THRESHOLD)"
  fi
}
control_flow_flattening_threshold=$(check_control_flow_flattening_threshold)

check_dead_code_injection() {
  if [[ -z "$INPUT_DEAD_CODE_INJECTION" ]]; then
    echo ""
  else
    echo "--dead-code-injection $(echo $INPUT_DEAD_CODE_INJECTION)"
  fi
}
dead_code_injection=$(check_dead_code_injection)

check_dead_code_injection_threshold() {
  if [[ -z "$INPUT_DEAD_CODE_INJECTION_THRESHOLD" ]]; then
    echo ""
  else
    echo "--dead-code-injection-threshold $(echo $INPUT_DEAD_CODE_INJECTION_THRESHOLD)"
  fi
}
dead_code_injection_threshold=$(check_dead_code_injection_threshold)

check_debug_protection() {
  if [[ -z "$INPUT_DEBUG_PROTECTION" ]]; then
    echo ""
  else
    echo "--debug-protection $(echo $INPUT_DEBUG_PROTECTION)"
  fi
}
debug_protection=$(check_debug_protection)

check_debug_protection_interval() {
  if [[ -z "$INPUT_DEBUG_PROTECTION_INTERVAL" ]]; then
    echo ""
  else
    echo "--debug-protection-interval $(echo $INPUT_DEBUG_PROTECTION_INTERVAL)"
  fi
}
debug_protection_interval=$(check_debug_protection_interval)

check_disable_console_output() {
  if [[ -z "$INPUT_DISABLE_CONSOLE_OUTPUT" ]]; then
    echo ""
  else
    echo "--disable-console-output $(echo $INPUT_DISABLE_CONSOLE_OUTPUT)"
  fi
}
disable_console_output=$(check_disable_console_output)

check_domain_lock() {
  if [[ -z "$INPUT_DOMAIN_LOCK" ]]; then
    echo ""
  else
    echo "--domain-lock $(echo $INPUT_DOMAIN_LOCK)"
  fi
}
domain_lock=$(check_domain_lock)

check_domain_lock_redirect_url() {
  if [[ -z "$INPUT_DOMAIN_LOCK_REDIRECT_URL" ]]; then
    echo ""
  else
    echo "--domain-lock-redirect-url $(echo $INPUT_DOMAIN_LOCK_REDIRECT_URL)"
  fi
}
domain_lock_redirect_url=$(check_domain_lock_redirect_url)

check_exclude() {
  if [[ -z "$INPUT_EXCLUDE" ]]; then
    echo ""
  else
    echo "--exclude $(echo $INPUT_EXCLUDE)"
  fi
}
exclude=$(check_exclude)

check_force_transform_strings() {
  if [[ -z "$INPUT_FORCE_TRANSFORM_STRINGS" ]]; then
    echo ""
  else
    echo "--force-transform-strings $(echo $INPUT_FORCE_TRANSFORM_STRINGS)"
  fi
}
force_transform_strings=$(check_force_transform_strings)

check_identifier_names_cache_path() {
  if [[ -z "$INPUT_IDENTIFIER_NAMES_CACHE_PATH" ]]; then
    echo ""
  else
    echo "--identifier-names-cache-path $(echo $INPUT_IDENTIFIER_NAMES_CACHE_PATH)"
  fi
}
identifier_names_cache_path=$(check_identifier_names_cache_path)

check_identifier_names_generator() {
  if [[ -z "$INPUT_IDENTIFIER_NAMES_GENERATOR" ]]; then
    echo ""
  else
    echo "--identifier-names-generator $(echo $INPUT_IDENTIFIER_NAMES_GENERATOR)"
  fi
}
identifier_names_generator=$(check_identifier_names_generator)

check_identifiers_dictionary() {
  if [[ -z "$INPUT_IDENTIFIERS_DICTIONARY" ]]; then
    echo ""
  else
    echo "--identifiers-dictionary $(echo $INPUT_IDENTIFIERS_DICTIONARY)"
  fi
}
identifiers_dictionary=$(check_identifiers_dictionary)

check_identifiers_prefix() {
  if [[ -z "$INPUT_IDENTIFIERS_PREFIX" ]]; then
    echo ""
  else
    echo "--identifiers-prefix $(echo $INPUT_IDENTIFIERS_PREFIX)"
  fi
}
identifiers_prefix=$(check_identifiers_prefix)

check_ignore_imports() {
  if [[ -z "$INPUT_IGNORE_IMPORTS" ]]; then
    echo ""
  else
    echo "--ignore-imports $(echo $INPUT_IGNORE_IMPORTS)"
  fi
}
ignore_imports=$(check_ignore_imports)

check_log() {
  if [[ -z "$INPUT_LOG" ]]; then
    echo ""
  else
    echo "--log $(echo $INPUT_LOG)"
  fi
}
log=$(check_log)

check_numbers_to_expressions() {
  if [[ -z "$INPUT_NUMBERS_TO_EXPRESSIONS" ]]; then
    echo ""
  else
    echo "--numbers-to-expressions $(echo $INPUT_NUMBERS_TO_EXPRESSIONS)"
  fi
}
numbers_to_expressions=$(check_numbers_to_expressions)

check_options_preset() {
  if [[ -z "$INPUT_OPTIONS_PRESET" ]]; then
    echo ""
  else
    echo "--options-preset $(echo $INPUT_OPTIONS_PRESET)"
  fi
}
options_preset=$(check_options_preset)

check_rename_globals() {
  if [[ -z "$INPUT_RENAME_GLOBALS" ]]; then
    echo ""
  else
    echo "--rename-globals $(echo $INPUT_RENAME_GLOBALS)"
  fi
}
rename_globals=$(check_rename_globals)

check_rename_properties() {
  if [[ -z "$INPUT_RENAME_PROPERTIES" ]]; then
    echo ""
  else
    echo "--rename-properties $(echo $INPUT_RENAME_PROPERTIES)"
  fi
}
rename_properties=$(check_rename_properties)

check_rename_properties_mode() {
  if [[ -z "$INPUT_RENAME_PROPERTIES_MODE" ]]; then
    echo ""
  else
    echo "--rename-properties-mode $(echo $INPUT_RENAME_PROPERTIES_MODE)"
  fi
}
rename_properties_mode=$(check_rename_properties_mode)

check_reserved_names() {
  if [[ -z "$INPUT_RESERVED_NAMES" ]]; then
    echo ""
  else
    echo "--reserved-names $(echo $INPUT_RESERVED_NAMES)"
  fi
}
reserved_names=$(check_reserved_names)

check_reserved_strings() {
  if [[ -z "$INPUT_RESERVED_STRINGS" ]]; then
    echo ""
  else
    echo "--reserved-strings $(echo $INPUT_RESERVED_STRINGS)"
  fi
}
reserved_strings=$(check_reserved_strings)

check_seed() {
  if [[ -z "$INPUT_SEED" ]]; then
    echo ""
  else
    echo "--seed $(echo $INPUT_SEED)"
  fi
}
seed=$(check_seed)

check_self_defending() {
  if [[ -z "$INPUT_SELF_DEFENDING" ]]; then
    echo ""
  else
    echo "--self-defending $(echo $INPUT_SELF_DEFENDING)"
  fi
}
self_defending=$(check_self_defending)

check_simplify() {
  if [[ -z "$INPUT_SIMPLIFY" ]]; then
    echo ""
  else
    echo "--simplify $(echo $INPUT_SIMPLIFY)"
  fi
}
simplify=$(check_simplify)

check_source_map() {
  if [[ -z "$INPUT_SOURCE_MAP" ]]; then
    echo ""
  else
    echo "--source-map $(echo $INPUT_SOURCE_MAP)"
  fi
}
source_map=$(check_source_map)

check_source_map_base_url() {
  if [[ -z "$INPUT_SOURCE_MAP_BASE_URL" ]]; then
    echo ""
  else
    echo "--source-map-base-url $(echo $INPUT_SOURCE_MAP_BASE_URL)"
  fi
}
source_map_base_url=$(check_source_map_base_url)

check_source_map_file_name() {
  if [[ -z "$INPUT_SOURCE_MAP_FILE_NAME" ]]; then
    echo ""
  else
    echo "--source-map-file-name $(echo $INPUT_SOURCE_MAP_FILE_NAME)"
  fi
}
source_map_file_name=$(check_source_map_file_name)

check_source_map_mode() {
  if [[ -z "$INPUT_SOURCE_MAP_MODE" ]]; then
    echo ""
  else
    echo "--source-map-mode $(echo $INPUT_SOURCE_MAP_MODE)"
  fi
}
source_map_mode=$(check_source_map_mode)

check_source_map_sources_mode() {
  if [[ -z "$INPUT_SOURCE_MAP_SOURCES_MODE" ]]; then
    echo ""
  else
    echo "--source-map-sources-mode $(echo $INPUT_SOURCE_MAP_SOURCES_MODE)"
  fi
}
source_map_sources_mode=$(check_source_map_sources_mode)

check_split_strings() {
  if [[ -z "$INPUT_SPLIT_STRINGS" ]]; then
    echo ""
  else
    echo "--split-strings $(echo $INPUT_SPLIT_STRINGS)"
  fi
}
split_strings=$(check_split_strings)

check_split_strings_chunk_length() {
  if [[ -z "$INPUT_SPLIT_STRINGS_CHUNK_LENGTH" ]]; then
    echo ""
  else
    echo "--split-strings-chunk-length $(echo $INPUT_SPLIT_STRINGS_CHUNK_LENGTH)"
  fi
}
split_strings_chunk_length=$(check_split_strings_chunk_length)

check_string_array() {
  if [[ -z "$INPUT_STRING_ARRAY" ]]; then
    echo ""
  else
    echo "--string-array $(echo $INPUT_STRING_ARRAY)"
  fi
}
string_array=$(check_string_array)

check_string_array_calls_transform() {
  if [[ -z "$INPUT_STRING_ARRAY_CALLS_TRANSFORM" ]]; then
    echo ""
  else
    echo "--string-array-calls-transform $(echo $INPUT_STRING_ARRAY_CALLS_TRANSFORM)"
  fi
}
string_array_calls_transform=$(check_string_array_calls_transform)

check_string_array_calls_transform_threshold() {
  if [[ -z "$INPUT_STRING_ARRAY_CALLS_TRANSFORM_THRESHOLD" ]]; then
    echo ""
  else
    echo "--string-array-calls-transform-threshold $(echo $INPUT_STRING_ARRAY_CALLS_TRANSFORM_THRESHOLD)"
  fi
}
string_array_calls_transform_threshold=$(check_string_array_calls_transform_threshold)

check_string_array_encoding() {
  if [[ -z "$INPUT_STRING_ARRAY_ENCODING" ]]; then
    echo ""
  else
    echo "--string-array-encoding $(echo $INPUT_STRING_ARRAY_ENCODING)"
  fi
}
string_array_encoding=$(check_string_array_encoding)

check_string_array_indexes_type() {
  if [[ -z "$INPUT_STRING_ARRAY_INDEXES_TYPE" ]]; then
    echo ""
  else
    echo "--string-array-indexes-type $(echo $INPUT_STRING_ARRAY_INDEXES_TYPE)"
  fi
}
string_array_indexes_type=$(check_string_array_indexes_type)

check_string_array_index_shift() {
  if [[ -z "$INPUT_STRING_ARRAY_INDEX_SHIFT" ]]; then
    echo ""
  else
    echo "--string-array-index-shift $(echo $INPUT_STRING_ARRAY_INDEX_SHIFT)"
  fi
}
string_array_index_shift=$(check_string_array_index_shift)

check_string_array_rotate() {
  if [[ -z "$INPUT_STRING_ARRAY_ROTATE" ]]; then
    echo ""
  else
    echo "--string-array-rotate $(echo $INPUT_STRING_ARRAY_ROTATE)"
  fi
}
string_array_rotate=$(check_string_array_rotate)

check_string_array_shuffle() {
  if [[ -z "$INPUT_STRING_ARRAY_SHUFFLE" ]]; then
    echo ""
  else
    echo "--string-array-shuffle $(echo $INPUT_STRING_ARRAY_SHUFFLE)"
  fi
}
string_array_shuffle=$(check_string_array_shuffle)

check_string_array_wrappers_count() {
  if [[ -z "$INPUT_STRING_ARRAY_WRAPPERS_COUNT" ]]; then
    echo ""
  else
    echo "--string-array-wrappers-count $(echo $INPUT_STRING_ARRAY_WRAPPERS_COUNT)"
  fi
}
string_array_wrappers_count=$(check_string_array_wrappers_count)

check_string_array_wrappers_chained_calls() {
  if [[ -z "$INPUT_STRING_ARRAY_WRAPPERS_CHAINED_CALLS" ]]; then
    echo ""
  else
    echo "--string-array-wrappers-chained-calls $(echo $INPUT_STRING_ARRAY_WRAPPERS_CHAINED_CALLS)"
  fi
}
string_array_wrappers_chained_calls=$(check_string_array_wrappers_chained_calls)

check_string_array_wrappers_parameters_max_count() {
  if [[ -z "$INPUT_STRING_ARRAY_WRAPPERS_PARAMETERS_MAX_COUNT" ]]; then
    echo ""
  else
    echo "--string-array-wrappers-parameters-max-count $(echo $INPUT_STRING_ARRAY_WRAPPERS_PARAMETERS_MAX_COUNT)"
  fi
}
string_array_wrappers_parameters_max_count=$(check_string_array_wrappers_parameters_max_count)

check_string_array_wrappers_type() {
  if [[ -z "$INPUT_STRING_ARRAY_WRAPPERS_TYPE" ]]; then
    echo ""
  else
    echo "--string-array-wrappers-type $(echo $INPUT_STRING_ARRAY_WRAPPERS_TYPE)"
  fi
}
string_array_wrappers_type=$(check_string_array_wrappers_type)

check_string_array_threshold() {
  if [[ -z "$INPUT_STRING_ARRAY_THRESHOLD" ]]; then
    echo ""
  else
    echo "--string-array-threshold $(echo $INPUT_STRING_ARRAY_THRESHOLD)"
  fi
}
string_array_threshold=$(check_string_array_threshold)

check_target() {
  if [[ -z "$INPUT_TARGET" ]]; then
    echo ""
  else
    echo "--target $(echo $INPUT_TARGET)"
  fi
}
target=$(check_target)

check_transform_object_keys() {
  if [[ -z "$INPUT_TRANSFORM_OBJECT_KEYS" ]]; then
    echo ""
  else
    echo "--transform-object-keys $(echo $INPUT_TRANSFORM_OBJECT_KEYS)"
  fi
}
transform_object_keys=$(check_transform_object_keys)

check_unicode_escape_sequence() {
  if [[ -z "$INPUT_UNICODE_ESCAPE_SEQUENCE" ]]; then
    echo ""
  else
    echo "--unicode-escape-sequence $(echo $INPUT_UNICODE_ESCAPE_SEQUENCE)"
  fi
}
unicode_escape_sequence=$(check_unicode_escape_sequence)

javascript-obfuscator $INPUT_INPUT_PATH \
                      --output $INPUT_OUTPUT_PATH \
                      $compact_option \
                      $control_flow_flattening \
                      $control_flow_flattening_threshold \
                      $dead_code_injection \
                      $dead_code_injection_threshold \
                      $debug_protection \
                      $debug_protection_interval \
                      $disable_console_output \
                      $domain_lock \
                      $domain_lock_redirect_url \
                      $exclude \
                      $force_transform_strings \
                      $identifier_names_cache_path \
                      $identifier_names_generator \
                      $identifiers_dictionary \
                      $identifiers_prefix \
                      $ignore_imports \
                      $log \
                      $numbers_to_expressions \
                      $options_preset \
                      $rename_globals \
                      $rename_properties \
                      $rename_properties_mode \
                      $reserved_names \
                      $reserved_strings \
                      $seed \
                      $self_defending \
                      $simplify \
                      $source_map \
                      $source_map_base_url \
                      $source_map_file_name \
                      $source_map_mode \
                      $source_map_sources_mode \
                      $split_strings \
                      $split_strings_chunk_length \
                      $string_array \
                      $string_array_calls_transform \
                      $string_array_calls_transform_threshold \
                      $string_array_encoding \
                      $string_array_indexes_type \
                      $string_array_index_shift \
                      $string_array_rotate \
                      $string_array_shuffle \
                      $string_array_wrappers_count \
                      $string_array_wrappers_chained_calls \
                      $string_array_wrappers_parameters_max_count \
                      $string_array_wrappers_type \
                      $string_array_threshold \
                      $target \
                      $transform_object_keys \
                      $unicode_escape_sequence
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

check_target() {
  if [[ -z "$INPUT_TARGET" ]]; then
    echo ""
  else
    echo "--target $(echo $INPUT_TARGET)"
  fi
}
target=$(check_target)

javascript-obfuscator $INPUT_INPUT_PATH 
                      --output $INPUT_OUTPUT_PATH \
                      $compact_option \
                      $control_flow_flattening \
                      $target
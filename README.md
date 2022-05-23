# :package: Github Action `Javascript obfuscator`

> A Github action to obfuscate javascript code by using the [javascript-obfuscator](https://github.com/javascript-obfuscator/javascript-obfuscator)

> **_NOTE:_** This Github action is still in work. It`s not ready to use yet.

## About

Obfuscate javascript and node with Github action to secure your code.
The Github action uses the [javascript-obfuscator](https://github.com/javascript-obfuscator/javascript-obfuscator).

## Usage

>:white_flag: See the [inputs](#inputs) section for detailed descriptions.

### Example low obfuscation

```yml
      - name: Create distribution path
        run: |
         mkdir -p distribution_path
      
      - name: Low obufscation test
        uses: ./
        with:
          input_path: input_path
          output_path: distribution_path
          compact: true
          control_flow_flattening: false
          dead_code_injection: false
          debug_protection: false
          debug_protection_interval: 0
          log: false
          disable_console_output: true
          rename_globals: false
          string_array_rotate: true
          self_defending: true
          string_array: true
          string_array_encoding: 'none'
          string_array_threshold: 0.75
          unicode_escape_sequence: false
          target: node
``` 
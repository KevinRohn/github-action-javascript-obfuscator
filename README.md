# :package: Github Action `Javascript obfuscator`

> A Github action to obfuscate javascript code by using the [javascript-obfuscator](https://github.com/javascript-obfuscator/javascript-obfuscator)

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
      
      - name: Low obfuscation test
        uses: KevinRohn/github-action-javascript-obfuscator@v1
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

## Inputs

> **Note:** 
For an detailed documentation, please check the full documentation of the [javascript-obfuscator](https://github.com/javascript-obfuscator/javascript-obfuscator)

The action supports the following inputs:

- `input_path`
  
  Input path of the js file(s)
  
  > Can be a single js file or also an directory with js files.

  **Required:**
  *true*

- `output_path`
  
  Output path to save the obfuscated file(s).

  > If you use the same output path as the input path, the postfix `obfuscated` will be added to the file(s) name.
  e.g. `index-obfuscated.js`

  **Required:**
  *true*

- `compact`

  Compact code output on one line.

  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `control_flow_flattening`

  Enables code control flow flattening. Control flow flattening is a structure transformation of the source code that hinders program comprehension.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `control_flow_flattening_threshold`
  
  The probability that the control flow flattening transformation will be applied to the node.

  > Type: `number` Default: `0.75` Min: `0` Max: `1`

  **Required:**
  *false*

- `dead_code_injection`

  With this option, random blocks of dead code will be added to the obfuscated code.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `dead_code_injection_threshold`

  Allows to set percentage of nodes that will affected by deadCodeInjection.

  > Type: `number` Default: `0.4` Min: `0` Max: `1`

  **Required:**
  *false*

- `debug_protection`

  This option makes it almost impossible to use the debugger function of the Developer Tools (both on WebKit-based and Mozilla Firefox).

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `debug_protection_interval`

  If set, an interval in milliseconds is used to force the debug mode on the Console tab, making it harder to use other features of the Developer Tools. Works if debugProtection is enabled. Recommended value is between `2000` and `4000` milliseconds.
  
  > Type: `number` Default: `0`

  **Required:**
  *false*

- `disable_console_output`

  Disables the use of `console.log`, `console.info`, `console.error`, `console.warn`, `console.debug`, `console.exception` and `console.trace` by replacing them with empty functions. This makes the use of the debugger harder.  
  
  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `domain_lock`

  Allows to run the obfuscated source code only on specific domains and/or sub-domains. This makes really hard for someone to just copy and paste your source code and run it elsewhere.

  > Type: `string[]` Default: `[]`

  **Required:**
  *false*

- `domain_lock_redirect_url`

  Allows the browser to be redirected to a passed URL if the source code is not run on the domains specified by `domain_lock`.

  > Type: `string` Default: `about:blank`

  **Required:**
  *false*

- `exclude`

  A filename or glob which indicates files to exclude from obfuscation.

  > Type: `string[]` Default: `[]`

  **Required:**
  *false*

- `force_transform_strings`

  Enables force transformation of string literals, which is matched by RegExp patterns (comma separated).

  > Type: `string[]` Default: `[]`

  **Required:**
  *false*

- `identifier_names_cache_path`

  The existing `.json` file that will be used to read and write identifier names cache.

  If a path to the empty file will be passed - identifier names cache will be written to that file.

  > Type: `string` Default: ``

  **Required:**
  *false*

- `identifier_names_generator`

  Sets identifier names generator.

  > Type: `string` Default: `hexadecimal`

  Available values:
    - `dictionary`: identifier names from `identifiers_dictionary` list
    - `hexadecimal`: identifier names like `_0xabc123`
    - `mangled`: short identifier names like `a, b, c`
    - `mangled-shuffled`: same as `mangled` but with shuffled alphabet

  **Required:**
  *false*

- `identifiers_dictionary`

  Sets identifiers dictionary for `identifier_names_generator`: `dictionary` option. Each identifier from the dictionary will be used in a few variants with a different casing of each character. Thus, the number of identifiers in the dictionary should depend on the identifiers amount at original source code.

  > Type: `string[]` Default: `[]`

  **Required:**
  *false*

- `identifiers_prefix`

  Sets prefix for all global identifiers.

  > Type: `string` Default: ``

  **Required:**
  *false*

- `ignore_imports`

  Prevents obfuscation of `require` and `dynamic` imports'.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `log`

  Enables logging of the information to the console.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `numbers_to_expressions`

  Enables numbers conversion to expressions.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `options_preset`

  Allows to set [options preset](https://obfuscator.io/#preset-options).

  > Type: `string` Default: `default`

  Available values:
  - `default`
  - `low-obfuscation`
  - `medium-obfuscation`
  - `high-obfuscation`
  
  All addition options will be merged with selected options preset.

  **Required:**
  *false*

- `rename_globals`

  Allows to enable obfuscation of global variable and function names with declaration

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `rename_properties_mode`

  Specify `rename_properties` option mode.

  > Type: `string` Default: `save`

  Available values:
    - `safe`
    - `unsafe`

  **Required:**
  *false*

- `reserved_names`

  Disables obfuscation and generation of identifiers, which being matched by passed RegExp patterns (comma separated).

  > Type: `string[]` Default: `[]`
  
  **Required:**
  *false*

- `reserved_strings`

  Disables transformation of string literals, which being matched by passed RegExp patterns.
  
  > Type: `string[]` Default: `[]`
  
  **Required:**
  *false*

- `seed`

  Sets seed for random generator. This is useful for creating repeatable results.
  
  > Type: `string|number` Default: `0`
  
  **Required:**
  *false*

- `self_defending`

  Disables self-defending for obfuscated code.

  > Type: `boolean` Default: `false`
  
  **Required:**
  *false*

- `simplify`

  Enables additional code obfuscation through simplification.

  > Type: `boolean` Default: `true`
  
  **Required:**
  *false*

- `source_map`

  Enables source map generation for obfuscated code.

  > Type: `boolean` Default: `true`

  Source maps can be useful to help you debug your obfuscated JavaScript source code. If you want or need to debug in production, you can upload the separate source map file to a secret location and then point your browser there.
  
  **Required:**
  *false*

- `source_map_base_url`

  Sets base url to the source map import url when `source_map_mode: separate`.
 
  > Type: `string` Default: ``

  **Required:**
  *false*

- `source_map_file_name`

  Sets file name for output source map when `source_map_mode: separate`.
 
  > Type: `string` Default: ``

  **Required:**
  *false*

- `source_map_mode`

  Specify source map output mode.

  > Type: `string` Default: `separate`

  Available values:
    - `inline`
    - `separate`
  
  **Required:**
  *false*

- `source_map_sources_mode`

  Specify source map sources mode.

  > Type: `string` Default: `sources-content`

  Available values:
    - `sources-content`
    - `sources`
  
  **Required:**
  *false*

- `split_strings`

  Splits literal strings into chunks with length of `split_strings_chunk_length` option value.

  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `split_strings_chunk_length`

  Sets chunk length of `split_strings` option.

  > Type: `number` Default: `10`

  **Required:**
  *false*

- `string_array`

  Enables gathering of all literal strings into an array and replacing every literal string with an array call.

  > Type: `boolean` Default: `true`

  Removes string literals and place them in a special array. For instance, the string `"Hello World"` in `var m = "Hello World";` will be replaced with something like `var m = _0x12c456[0x1];`.

  **Required:**
  *false*

- `string_array_calls_transform`

  Enables the transformation of calls to the `string_array`.

  > Type: `boolean` Default: `false`

  All arguments of these calls may be extracted to a different object depending on `string_array_calls_transform_threshold` value. So it makes it even harder to automatically find calls to the string array.

  **Required:**
  *false*

- `string_array_calls_transform_threshold`

  The probability that that calls to the string array will be transformed.

  > Type: `number` Default: `0.5`

  **Required:**
  *false*

- `string_array_encoding`

  Encodes each string in strings array using `base64` or `rc4` (this option can slow down your code speed).

  > Type: `string[]` Default: `[]`

  Available values:
    - `none`
    - `base64`
    - `rc4`

  **Required:**
  *false*

- `string_array_indexes_type`

  Allows to control the type of string array call indexes.

  > Type: `string[]` Default: `['hexadecimal-number']`

  Each `string_array` call index will be transformed by the randomly picked type from the passed list. This makes possible to use multiple types.

  Available values:
    - `hexadecimal-number`
    - `hexadecimal-numeric-string`

  **Required:**
  *false*

- `string_array_index_shift`

  Enables additional index shift for all string array calls.

  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `string_array_rotate`

  Shift the `string_array` array by a fixed and random (generated at the code obfuscation) places. This makes it harder to match the order of the removed strings to their original place.
  
  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `string_array_shuffle`

  Randomly shuffles the `string_array` array items.  

  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `string_array_shuffle`

  Randomly shuffles the `string_array` array items.  

  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `string_array_wrappers_count`

  Sets the count of wrappers for the `string_array` inside each root or function scope. The actual count of wrappers inside each scope is limited by a count of literal nodes within this scope. 

  > Type: `number` Default: `1`

  **Required:**
  *false*

- `string_array_wrappers_chained_calls`

  Enables the chained calls between `string_array` wrappers.

  > Type: `boolean` Default: `true`

  **Required:**
  *false*

- `string_array_wrappers_parameters_max_count`

  Allows to control the maximum number of string array wrappers parameters. Default and minimum value is `2`. Recommended value between `2` and `5`.
  
  > Type: `number` Default: `2`

  **Required:**
  *false*

- `string_array_wrappers_type`

  Allows to select a type of the wrappers that are appending by the `string_array_wrappers_count` option.

  > Type: `string` Default: `variable`

  Available values:
    - `variable`
    - `function`

  **Required:**
  *false*

- `string_array_threshold`

  The probability that the literal string will be inserted into `string_array`.

  > Type: `number` Default: `0.8` Min: `0` Max: `1`

  **Required:**
  *false*

- `target`

  Allows to set target environment for obfuscated code.
  
  > Type: `string` Default: `browser`

  Available values:
    - `browser`
    - `browser-no-eval`
    - `node`

  **Required:**
  *false*

- `transform_object_keys`

  Enables transformation of object keys.
  
  > Type: `boolean` Default: `false`

  **Required:**
  *false*

- `unicode_escape_sequence`

  Allows to enable/disable string conversion to unicode escape sequence.
  
  > Type: `boolean` Default: `false`

  **Required:**
  *false*


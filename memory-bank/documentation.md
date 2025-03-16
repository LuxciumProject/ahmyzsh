# AHMYZSH Environment Startup Sequence

## source-me-in-etc-zshenv.sh

- Sets up environment variables.
- Loads the PATH from a cached file or computes it using `core/compute-path/path.sh`.
- Sources `MAIN-FUNCTIONS.sh`.
- Sources `core/compute-path/path.sh`.
- Sources `core/compute-path/conda-initialize.sh`.
- Calls the `__compute_extended_path` function.
- Sources `MAIN.sh`.

## MAIN.sh

- Defines the `SCIENTIA_ES_LUX_PRINCIPIUM` function, which:
  - Checks if the shell is zsh.
  - Reloads aliases and configuration if `MAIN_INIT` is set.
  - Loads `MAIN_SETTINGS.sh` and calls the `MAIN_SETTINGS` function.
  - Calls the `load_all_config_and_settings_files` function.
  - Sources the `.env` file from the home directory.
  - Calls various functions to set up the environment, such as `fnm_`, `activate_prompt`, `load_oh_my_zsh`, `load_options_list`, `load_options_main`, `load_autosuggest`, and `load_autocomplete`.
  - Runs `compaudit` and `zsh_compile_all_R`.
  - Sets the key bindings to vi mode.

## MAIN_SETTINGS.sh

- Defines the `MAIN_SETTINGS` function, which:
  - Calls the `my_envs` function to set up various environment variables and aliases.
  - Calls the `__LOCALE__` function to set up locale settings.

## MAIN-FUNCTIONS.sh

### Core Loading Functions

1. `load_all_config_and_settings_files()`
   - Primary configuration loader
   - Loads files from core directories in order:
     - paths/
     - layouts/
     - compute-path/
     - functions/
     - aliases/
     - env/
   - Uses either verbose or non-verbose loading mode based on VERBOSA value

2. `load_config_or_settings_()`
   - Targeted loader for specific configuration directories
   - Supports verbose mode with timing information

3. `Load_all_files_d()`
   - Base function for loading all .sh files from a directory
   - Simple load without verbose output

4. `Load_all_files_d_v()`
   - Verbose version of Load_all_files_d
   - Includes timing and readability checks
   - Logs each file load

### Timing Utility Functions

1. `timer_()`
   - Base timing function
   - Calculates elapsed time between timestamps
   - Formats output with proper spacing

2. `timer_now()`
   - Measures time since last TIMER_THEN
   - Used for individual operation timing

3. `timer_from_then()`
   - Calculates time from a specified timestamp
   - Used for custom timing measurements

4. `timer_all()`
   - Measures time since TIMER_ALL_THEN
   - Used for overall execution timing

### Source Management Functions

1. `load_()`
   - Combined sourcing and function execution
   - Sources a file then calls a specified function
   - Used for modular loading operations

2. `call_()`
   - Function execution wrapper
   - Includes timing and logging
   - Returns function's return value

3. `source_()`
   - Safe file sourcing implementation
   - Checks file existence and readability
   - Includes timing in verbose mode

## core/compute-path/path.sh

- Sets up and manages the PATH variable.
- Defines functions for adding, appending, and deduplicating the PATH.
- Calls the `conda_init_esoteric-argentum` function to initialize the Conda environment.

## core/compute-path/conda-initialize.sh

- Defines the `conda_init_esoteric-argentum` function to initialize the Conda environment.

## Loading Sequence Flow

```mermaid
flowchart TB
    subgraph Phase1["Initial Setup Phase"]
        A[source-me-in-etc-zshenv.sh] -->|sources| B[MAIN-FUNCTIONS.sh]
        A -->|sources| C[compute-path/path.sh]
        A -->|sources| D[conda-initialize.sh]
    end

    subgraph Phase2["Bootstrap Phase"]
        E[MAIN.sh] -->|executes| F[SCIENTIA_ES_LUX_PRINCIPIUM]
        F -->|loads| G[MAIN_SETTINGS.sh]
    end

    subgraph Phase3["Configuration Phase"]
        H[load_all_config_and_settings_files] -->|uses| I[Load_all_files_d/v]
        I -->|loads| J[Core Directories]
    end

    A -->|bootstraps| E
    F -->|calls| H

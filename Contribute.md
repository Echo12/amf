# Contributing

## Coding Conventions

- Only use unix lineendings
- Use cba macros like GVAR, QGVAR and FUNC for simplified variable naming
- Precompile functions using the PREP macro inside the specific XEH_*Init.sqf. Don't compile functions on Init, choose if server or client needs this.
Plug and play Zig setup
1. Clone
2. git submodule init
3. git submodule update
4. zig build

To update bindings if needed:
1. pip install libclang
2. python3 binding_generator.py
3. it will update reaper_functions.zig in /src/lib folder

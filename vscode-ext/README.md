# RAC++ Compiler - VS Code Extension

This directory contains the source code for the **RAC++ Compiler** VS Code extension.

## Features
- **Syntax Highlighting**: Custom highlighting for `.rsc` language files with full support for RAC++ syntax.
  - **Implicit Math / Eval**: Directly write `adr(hello) + 0x2`, arithmetic expressions, bitwise operations without wrapping in `eval(...)`.
  - **Direct Binary Data**: `bin 1010` auto-converts to hex byte stream.
  - **Decimal & Hex Byte Sequence**: Write `16 16` (decimal byte stream) and switch using `@using hex`.
  - **Aliases**: `@using target = alias` (e.g. `@using pr_org() = pro`).
  - **Flexible Section Headers**: `@section.<sect> org <org> backup <backup>` or `@section.<sect> at <org> backup <backup>`.
- **Run & Debug**: Easily compile and run `.rsc` files using the `RAC++ Compiler` from within VS Code.
- **Model Selection**: Switch between target models (e.g. `580vnx`, `880btg`) natively.
- **Safe Mode Toggle**: Toggle compiler safe mode on or off.

## How to Build the Extension (.vsix)

To package this extension into an installable `.vsix` file, you need Node.js and the `vsce` CLI tool.

1. **Install Node.js**: Ensure Node.js and NPM are installed on your system.
2. **Package the extension**:
   Open a terminal in this directory (`vscode-ext/`). You can package it using either of these two methods:

   **Method A: Using npx (Recommended to avoid permission issues)**
   ```bash
   npx @vscode/vsce package
   ```

   **Method B: Global Install**
   If you prefer to install the CLI tool globally:
   ```bash
   npm install -g @vscode/vsce
   vsce package
   ```

3. **Install the built extension**:
   The command will generate a `.vsix` file (e.g., `racpp-compiler-0.0.3.vsix`). You can install it in VS Code by going to the Extensions view -> `...` (More Actions) -> `Install from VSIX...` and selecting the generated file.

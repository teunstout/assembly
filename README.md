# Assembly

This is just to get an idea of the different formats of assembly. But the most important thing learned from this is what needs to happen to actually run such a program.
We need to link the machine code with the operating system's commands:

**Machine Code**

- The actual CPU instructions in numeric form
- Example: B8 01 00 00 00 might mean "move value 1 into register EAX"
- Pure instructions that the processor executes directly
- Just the code part

**Binary (or Binary Executable)**

- A complete file containing machine code PLUS additional data:
  - Headers (format information: PE for Windows, ELF for Linux)
  - Metadata (entry point, sections, imports/exports)
  - Data sections (strings, constants, initialized variables)
  - Resource information (icons, version info)
  - Relocation tables (for loading at different memory addresses)

## Assemble for Linux

```bash
nasm -f elf32 -o hello_linux.o hello_linux.asm
ld -m elf_i386 -o hello_linux hello_linux.o
```

## Assemble for Windows

This is not working yet, but it was good enough to get an idea. So I won't fix this.

```bash
nasm -f win32 hello_windows.asm -o hello_windows.obj
link hello_windows.obj /subsystem:console /entry:start /out:hello_windows.exe
```

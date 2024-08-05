---
title: Assemblers and Tools
date: 04-08-2024 12:30
---

# Assemblers on the Linux Platform

There are about a dozen assemblers available for amd64 Linux. a detailed comparison of all of them, is the eventual goal of this page. For now I will settle for the two most popular. As well as go over one tempting option for seasoned ASM  programmers.

## The Gnu Assembler (gas)

This is included with gnu binutils, as the target output format for both the GCC compiler, and LLVM. Its principal advantage is that it will almost never not be available. And is guaranteed to produce correct  elf objects, that can be linked. Because the linker is also maintained by the same  project.

The principal disadvantage of the gnu assembler is that it uses a variant of  bell labs syntax. Which is  is often the reverse of intel syntax, in which most examples and practical code are written.

Gas also changes instruction mnemonics to suit its own purposes, which can be a pain when looking things up in reference manuals. On the other hand it is the disassembly format for popular reverse engineering tools,  and is used in the kernels of most unix operating systems today.

* [GNU Binutils](https://www.gnu.org/software/binutils/) 

## JWASM/USAM 

Jwasm and UASM, are  macro assemblers compatible with Microsoft assembler Version 6.1  syntax. They are attempting option for those who have coded in assembly language on Microsoft operating systems before.  I would urge the reader to switch to another assembler as quickly as possible however, because neither of these assemblers are capable of outputting proper debug symbols. Which you need for use in the debugger. In addition the linker apparently does not like certain objects produced by these assemblers. If you're statically linking you should be fine, but dynamic linking is another matter.

My early  prototype of this project, used Jwasm as its base. And some examples might still use it. But you're better of switching to an assembler with more mainstream support on Linux.

* [JWASM](https://github.com/JWasm/JWasm)
* [UASM](https://terraspace.co.uk/uasm.html)

## NASM/YASM (Recommended)

NASM is the best known macro assembler available for Linux. There is plenty of documentation and code samples available which use it, it can produce proper debug symbol output. And the linker doesn't barf when dynamically linking against libraries.

YASM  Has all these features, also understands gas syntax. It was a fork of NASM  originally. I personally use NASM. But either assembler should get the job done.

* [NASM Home](https://nasm.us/)
* [YASM Modular Assembler](https://yasm.tortall.net/)

## flat Assembler

Not tried it, can't say much about it other than most of their examples use 32bit linux abi.

* [Flat Assembler](https://flatassembler.net/)

# Linkers

Make executable binaries from assembled code, resolve dynamic symbols

## Gold/ld

The Default linker, we assume you're using it. See Binutils above.

## LLD

The linker from LLVM, theoretically better than GNU ld or gold, and a drop in replacement.
I've had problems, getting it to link with the Musl libc. If you know what's up with that.
E-mail me. 

* [LLD](https://lld.llvm.org/)

## JWLink/WLink

They exist... Based on the Watcom linkers... Please don't... Seriously don't! I only included it on this list because **some random person** will send me e-mail if i don't..

* [JWLink](https://github.com/JWasm/JWlink)
* [WLink](https://open-watcom.github.io/open-watcom-1.9/lguide.html)




# Binary Data Editors

Often called a "Hex Editor", these programs are used to edit binary files, like executables. You'll hopefully never need one of these, but it can come in handy. If something goes wonky with the linker. Or for quick educational demonstrations.

## Joe's own Editor

First Released in 1988 this editor predates Linux itself by nearly three years. 
It has a hex mode that is quite nice. Has no support for structured editing.
Simple point and zap. Has optional wordstar keybindings for additional gray muzzle street cred. A bit primitive but  you can't beat a classic.

* [Joe's own Editor](https://joe-editor.sourceforge.io)

## GNU Poke

The newest hotness in binary editing! 

GNU poke is an interactive editor for binary data. Not limited to editing basic entities such as bits and bytes, it provides a full-fledged procedural, interactive programming language designed to describe data structures and to operate on them. Once a user has defined a structure for binary data (usually matching some file format) she can search, inspect, create, shuffle and modify abstract entities such as ELF relocations, MP3 tags, DWARF expressions, partition table entries, and so on, with primitives resembling simple editing of bits and bytes.

A bit overkill for most of the stuff on this site, but very useful.

* [GNU Poke](http://www.jemarch.net/poke)

# Debuggers

I won't sugar coat it here.. All the debuggers suck for ASM work. There are two. 
They both require valid debug symbols. No Jumping to arbitrary addresses here.

## GNU Debugger

The old workhorse, Construct your program so as to resemble a C program, and it's fine.

* [GDB](https://www.sourceware.org/gdb/)

## LLDB

Slightly less worse then GDB.. Better Disassembler 

* [LLDB](https://lldb.llvm.org/)
What is this?
===
Hi, this project isn't mine. I simply took on the task of making it more distributed to improve readability and maintainability. My intention is just to help structure it better, since the original repository, https://github.com/symisc/PH7, only had a single file, ph7.c, which contained the entire code, making it a bit more complex to study. I'm leaving the code as it is in the original repository, respecting its license and only slightly modifying its architecture. I hope it's useful for those who want to study it. Thanks, Symisc :).

How do I compile it?
===
Well, you just need to run the makefile located in the project folder and have the environment installed, which is the gcc compiler. If you use another compiler, it's at your own risk. It worked well for me with gcc on Kali Linux; there shouldn't be any problems with TCC on Windows.

For testing when running makefile, you should go to the test folder; there the executable is generated along with the main.php and test.php test files.

HERE IS THE DESCRIPTION OF THE ORIGINAL REPOSITORY:
===================================================

PH7 - An Embedded Implementation of PHP (C Library).
===

PH7 is a in-process software C library which implements a highly-efficient embeddable bytecode compiler and a virtual machine for the PHP programming language. In other words, PH7 is a PHP engine which allow the host application to compile and execute PHP scripts in-process. PH7 is to PHP what SQLite is to SQL.

PH7 implements most of the constructs introduced by the PHP 5.3 release such as heredoc, nowdoc, gotos, classes, anonymous functions, closures and so on and introduces very [powerful extensions](http://ph7.symisc.net/features.html) to the PHP programming language such as:


 * Function & Method Overloading.
 * Full Type Hinting.
 * Introducing comma expressions.
 * Introducing the eq and ne operators for strict string comparison.
 * Improved operators precedences.
 * Powerful OO subsystem.
 * Function arguments can take any complex expressions as their default values.
 * 64-bit integer arithmetic for all platforms.
 * Native UTF-8 support.
 * Written in ANSI C, thread-safe, full-reentrant; compile and run unmodified in any platform including restricted embedded devices with a C compiler.
 * Amalgamation: All C source code for PH7 are combined into a single source file.
 * Built with more 470 function including an XML parser (with namespace support), INI processor, CSV reader/writer, UTF-8 encoder/decoder, zip archive extractor, JSON encoder/decoder, random number/strings generator, native and efficient File IO for Windows and UNIX systems and many more without the need of any external library to link with.
 * PH7 is an Open-Source product.
 

As an embedded interpreter, it allows multiple interpreter states to coexist in the same program, without any interference between them. Programmatically, foreign functions in C/C++ can be added and values can be defined in the PHP environment. Being a quite small program, it is easy to comprehend, get to grips with, and use. 

PH7 History - Why PHP?
=========================

PH7 was developed in the early 2011 by a Tunisian startup for a French conglomerate which was looking for a way to power the web interface of their commercial routers.
Previously the technology used by the conglomerate was obsolete and based on a minimal HTTP server (micro-httpd written by Jef Poskanzer) and a hard-coded binary (the web interface) served via old CGI interface.
This poor combination shows its limitation when the company decided to switch to a user-configurable (self config) routers where everything must be done via the web interface. This involve a dynamic web UI that have to deal with many issues.
In order to keep the low level software layer of the router untouched, it was decided to write all the web interface in a dynamic web oriented programming language and the compilation result to be executed by a virtual machine (PH7) and thus leaving the low-level stack of the router untouched.
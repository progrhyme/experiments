# Gake - Make by Go

This is a [GNU make](http://www.gnu.org/software/make/) alternative written by Golang.

## TOC

* [Concept](#concept)
* [Key Features](#key-features)
* [Milestones](#milestones)
* [Contributors are welcome!](#contributors-are-welcome)

## Concept

In many cases, we do not have to write a *Makefile* in golang.  
However we need building systems in other programming languages.

[Gradle](https://gradle.org/) is a great building tool for software, but is somewhat heavy because it is based on Java technology and especially on JVM.

*Golang* is suitable to create light-weight program. *Golang* also has higher productivity.  
So the building system by *golang* will have both light-weight and powerfull features.

The goal of **Gake** is to be such building system.   
The name "Gake" comes from "Go" + "Make".

## Key Features

**Gake** will provide below features:

* You can write your building tasks in **Gakefile** which corresponds to *Makefile* in GNU make.
* Original DSL (Domain Specific Language) for Gakefile.
* **Gakefile** is simpler than *Makefile* of GNU Make and easy to organize complex tasks by modularization.
* Extensible by plugins which anybody can develop and easily plug in **Gake**.

## Milestones

This program is under development.

## Contributors are welcome!

I am a newbie for golang; and **Gake** has very much to implement.

If you are interested in this project, feel free to write codes and send patches.

## LICENSE

Copyright (C) 2015 YASUTAKE Kiyoshi.  
Released under the MIT License.

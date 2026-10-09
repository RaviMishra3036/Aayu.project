# AAYU Example Projects

This repository contains sample projects written in AAYU, the
Intent-to-Silicon programming language. AAYU is designed for single-file,
full-stack applications with zero external dependencies.

## What's Inside?

The examples are heavily commented to explain the AAYU syntax and runtime
behavior.

### `aayu_webpage.aayu`

Demonstrates reactive state, declarative UI, and click listeners in a web app.

### `calculator.aayu`

Demonstrates synchronous terminal input, `float()` conversion, arithmetic, and
conditional control flow.

### `power_test.aayu`

Provides a basic syntax and arithmetic sanity check.

## Install the Compiler on Windows

Run PowerShell from this directory:

```powershell
powershell -ExecutionPolicy Bypass -File .\install-aayu.ps1
```

The script downloads the official AAYU `v1.2.11` compiler to
`%USERPROFILE%\.aayu\bin` and adds it to your user PATH. Open a new terminal
after installation.

## How to Run

Run an example from this directory:

```bash
aayu run calculator.aayu
```

To run the web example:

```bash
aayu run aayu_webpage.aayu --web
```

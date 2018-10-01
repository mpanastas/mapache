# Mapache
Mapache compiler 

## Table of contents

* [Setup](#set-up)
* [Generate grammar](#Generate-Java-grammar)
* [Generate Swift grammar](#Generate-Swift-Grammar)

# Set Up
```bash
export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.gui.TestRig'
```

# Generate Java grammar

```bash
antlr4 Mapache.g4
javac Mapache*.java 
```

```bash
grun Mapache program -gui
```

```bash
grun Mapache program -gui input.txt
```

# Generate Swift Grammar

```bash
$ antlr4 -Dlanguage=Swift Mapache.g4 
```

For more information on how to integrate antlr with Swift, go to [ANTLR4 documentation](https://github.com/antlr/antlr4/blob/master/doc/swift-target.md).
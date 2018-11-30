# Java + R = ❤

> Demo project for Java and R using GraalVM

> Largely inspired by: https://github.com/graalvm/graalvm-demos/tree/master/spring-r 


## Pre-requisite

* Install `GraalVM`
* Set your `JAVA_HOME` to the JRE of your installation of GraalVM, for example:
```
export GRAALVM_HOME=/path/to/graalvm
export JAVA_HOME=$GRAALVM_HOME
export PATH=$GRAALVM_HOME/bin:$PATH
```

## Run

```
mvn exec:java -Pplot
```


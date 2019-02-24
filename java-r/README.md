# Java + R = ❤

> Demo project for Java and R using GraalVM

> First version, inspired by: https://github.com/graalvm/graalvm-demos/tree/master/spring-r 

This demo has two parts:
* R script with several functions invoked by the Java part of the app
  * `plotRevenue`: it uses objects/classes from Java
  * `revenueStats`: for showing how to use a map as result of the function
* Java app using the R functions to process the data


## Pre-requisite

* Install `GraalVM`
* Set your `JAVA_HOME` to the JRE of your installation of GraalVM, for example:
```bash
export GRAALVM_HOME=/path/to/graalvm
export JAVA_HOME=$GRAALVM_HOME
export PATH=$GRAALVM_HOME/bin:$PATH
```

* Install R component
```bash
# List available components
gu list -c

# Install R component
gu install R
```

* Install R libs for the demo
```bash
Rscript -e 'install.packages("ggplot2")'
```

## Run

```
mvn exec:java -Pplot
```

Open your browser: `http://localhost:4567/`

![Stats](img/stats.png)
![Plot](img/plot.png)

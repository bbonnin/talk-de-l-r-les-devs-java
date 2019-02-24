#!/bin/bash

cp=target/java-r-1.0-SNAPSHOT.jar

for f in target/lib/*.jar
do
  cp=$cp:$f
done

java -cp $cp io.millesabords.demos.java_r.StarwarsApp

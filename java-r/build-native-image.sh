#!/bin/bash

# Not working at the moment: see https://github.com/oracle/graal/issues/662

export GRAALVM_HOME=../graalvm-ce-1.0.0-rc9/Contents/Home
export JAVA_HOME=$GRAALVM_HOME/jre
export PATH=$JAVA_HOME/bin:/$GRAALVM_HOME/bin:$PATH

native-image --no-server --verbose -cp target/*:target/lib/* \
      io.millesabords.demos.java_r.RGraalVM \
      -Dpolyglot.engine.PreinitializeContexts=R \
      -H:+ReportUnsupportedElementsAtRuntime \
      -H:+AllowVMInspection \
      -H:IncludeResources=.*.R \
      -H:EnableURLProtocols=http \
      --delay-class-initialization-to-runtime=io.millesabords.demos.java_r.RGraalVM,org.graalvm.polyglot.Context \
      -H:Name=GgplotDemo


package io.millesabords.demos.java_r;

import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;

import java.util.function.Function;

import static spark.Spark.get;
import static spark.Spark.staticFiles;

public class GgplotDemo {


    public static void main(String[] args) throws Exception {

        final Context graalvmCtx = Context.newBuilder().allowAllAccess(true).build();

        final Source starwarsSrc = Source.newBuilder("R", GgplotDemo.class.getResource("/starwars.R")).build();

        final Function<ParamsHolder, String> fctR = graalvmCtx.eval(starwarsSrc).as(Function.class);

        staticFiles.location("/public");

        get("/starwars/:trilogies", (req, res) -> {
            final String svg = fctR.apply(
                    new ParamsHolder("starwars.csv", req.params(":trilogies")));

            res.type("image/svg+xml");

            return svg;
        });
    }
}

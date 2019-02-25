package io.millesabords.demos.java_r;

import com.google.gson.Gson;
import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.graalvm.polyglot.Value;

import java.io.IOException;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

import static spark.Spark.get;
import static spark.Spark.staticFiles;

public class MixApp {

    private static final Gson GSON = new Gson();


    public static void main(String[] args) throws Exception {

        final Context graalvmCtx = Context.newBuilder().allowAllAccess(true).build();

        staticFiles.location("/public");

        initStarwarsServices(graalvmCtx);
        initMtcarsServices(graalvmCtx);
    }

    private static void initStarwarsServices(Context graalvmCtx) throws IOException {

        final Source starwarsSrc = Source.newBuilder("R",
                MixApp.class.getResource("/starwars.R")).build();

        final Value rCode = graalvmCtx.eval(starwarsSrc);

        // The R script file contains several functions: plotRevenue, revenueStats
        //
        final Function<SWParamsHolder, String> plotRFct = rCode.getMember("plotRevenue").as(Function.class);
        final Supplier<Map> statsRFct = rCode.getMember("revenueStats").as(Supplier.class);

        // Set the csvFilename used by revenueStats function
        //
        graalvmCtx.getBindings("R").putMember("csvFilename", "starwars.csv");

        get("/starwars/svg/:trilogies", (req, res) -> {
            final String trilogies = req.params(":trilogies");
            Logger.log("CODE JAVA - trilogies=" + trilogies);

            final String svg = plotRFct.apply(
                    new SWParamsHolder("starwars.csv", trilogies));

            res.type("image/svg+xml");

            return svg;
        });

        get("/starwars/stats", (req, res) -> {
            Logger.log("CODE JAVA - stats");

            res.type("application/json");

            return GSON.toJson(statsRFct.get());
        });
    }

    private static void initMtcarsServices(Context graalvmCtx) throws IOException {

        final Source mtcarsSrc = Source.newBuilder("R",
                MixApp.class.getResource("/mtcars.R")).build();

        // The R script file contains several functions: plotMtcars
        //
        final Function<MTCarsParamsHolder, String> plotRFct = graalvmCtx.eval(mtcarsSrc).as(Function.class);

        get("/mtcars/svg/:type", (req, res) -> {
            final String type = req.params(":type");
            Logger.log("CODE JAVA - mtcars plot type=", type, ", test=", type);

            final String svg = plotRFct.apply(
                    new MTCarsParamsHolder(type));

            res.type("image/svg+xml");

            return svg;
        });
    }
}

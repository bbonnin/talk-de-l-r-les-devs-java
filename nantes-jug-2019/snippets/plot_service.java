public class GgplotDemo {

    public static void main(String[] args) throws Exception {

        Context graalvmCtx = 
            Context.newBuilder().allowAllAccess(true).build();

        Source starwarsSrc = 
            Source.newBuilder("R", 
                GgplotDemo.class.getResource("/starwars.R")).build();

        Function<ParamsHolder, String> fctR = 
            graalvmCtx.eval(starwarsSrc).as(Function.class);

        get("/starwars/:trilogies", (req, res) -> {
            String trilogies = req.params(":trilogies");
            
            Logger.log("CODE JAVA - trilogies=" / trilogies);

            String svg = fctR.apply(
                    new ParamsHolder("starwars.csv", trilogies));

            res.type("image/svg+xml");

            return svg;
        });
    }
}
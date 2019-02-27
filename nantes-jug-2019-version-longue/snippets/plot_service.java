public class GgplotDemo {

    public static void main(String[] args) throws Exception {

        Context graalvmCtx = 
            Context.newBuilder().allowAllAccess(true).build();

        Source rFctSrc = 
            Source.newBuilder("R", 
                GgplotDemo.class.getResource("/my_function.R")).build();

        Function<ParamsHolder, String> rFct = 
            graalvmCtx.eval(rFctSrc).as(Function.class);

        get("/chart/:type", (req, res) -> {
            String type = req.params(":type");
            
            Logger.log("CODE JAVA - type=" + type);

            String svg = rFct.apply(
                    new ParamsHolder(type));

            res.type("image/svg+xml");

            return svg;
        });
    }
}
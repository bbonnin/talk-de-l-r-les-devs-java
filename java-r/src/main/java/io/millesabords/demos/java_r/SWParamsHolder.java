package io.millesabords.demos.java_r;

import java.util.Arrays;


/**
 * Use to provide parameters to R code (function: plotRevenue).
 */
public class SWParamsHolder {

    public String filename;
    public Integer[] trilogies;

    public SWParamsHolder(String filename, String trilogies) {
        this.filename = filename;
        this.trilogies = trilogies == null ? null :
               Arrays.stream(trilogies.split(",")).map(Integer::parseInt).toArray(Integer[]::new);
                        //.collect(toList());
    }
}

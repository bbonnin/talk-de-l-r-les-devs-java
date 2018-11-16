package io.millesabords.demos.java_r;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;

import static java.util.stream.Collectors.toList;

/**
 * Log holder used by R.
 */
public class LogHolder {

    private static final Logger LOG = LoggerFactory.getLogger("java-r");

    public static void log(Object... args) {
        LOG.info(String.format("%s", String.join(" ",
                Arrays.stream(args).map(Object::toString).collect(toList()))));
    }
}

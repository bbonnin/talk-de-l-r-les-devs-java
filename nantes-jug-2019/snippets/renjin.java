import java.io.*;
import javax.script.*;
import org.renjin.script.*;

public class RenjinDemo {

  public static void main(String[] args) {
    
    final RenjinScriptEngineFactory factory = 
    	new RenjinScriptEngineFactory();

    final ScriptEngine engine = 
    	factory.getScriptEngine();

    engine.eval("print('Hello World!')");

    engine.eval(new FileReader("mon_script.R"));
  }
}
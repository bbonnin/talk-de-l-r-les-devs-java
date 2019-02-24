library(rJava)

.jinit() # Démarrage de la JVM

s <- .jnew("java/lang/String", "Hello World!")

.jcall(s, "I", "indexOf", "World")
[1] 6 

print(s)
[1] "Java-Object: Hello World!"

.jstrVal(s)
[1] "Hello World!"
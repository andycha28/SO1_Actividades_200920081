# Actividad 1 
##### Carné: 2009-20081
##### Virginia Chavarría

---------------
_Tipos de Kernel_
---------------
> #### **Monolíticos**
>Este tipo de núcleo es aquel que facilita la abstracción del hardware subyacente sin importar su grado de potencia o variedad. Para realizar una comparación objetiva, estos núcleos son bastante complejos en cuanto a su manejo.
>
>  Hace más de veinte años, estos núcleos eran los principales en ser catalogados como obsoletos e inservibles, además de innecesarios. Sin embargo, con el tiempo han sido catalogados como mejorados e importantes, aunque no precisamente los mejores.

> #### **Microkernel**
>
> Mejor conocidos como micronúcleos, estos son aquellos que son catalogados como mejores en comparación con el monolitico, debido a que el mismo cumple una serie de pequeñas abstracciones mucho más simples que las comúnmente observadas en el kernel monolítico, y su función principal es utilizar diversas aplicaciones para facilitar su funcionalidad. Su verdadero objetivo principal, es el de implementar estos servicios de forma separada en cuanto a la política de funcionamiento del sistema, se refiere. De este modo se busca que el núcleo funcione de maravilla y sea bastante simple y organizado de utilizar



> #### **Núcleos Híbridos**
>
> Este tipo de kernel, es aquel que se considera una gran modificación del microkernel, que si bien son bastante similares en cuanto a diversas características, se diferencian debido a que este cuenta con un espacio adicional que cumple la función de permitir que el mismo se ejecute de forma mucho más rápida y funcional. Sin embargo, cualquiera de estos dos núcleos es bastante funcional, incluso los micronúcleos comunes, los cuales tienen un excelente rendimiento. Muchos de los sistemas operativos que se aplican hoy en día, cuentan con estos dos tipos de núcleos ya que ambos funcionan muy bien.

> ### **Exonúcleos**
>
> Son aquellos que si bien no cuentan con ningún tipo de abstracción, son aquellos que permiten el uso de bibliotecas. Es decir son núcleos que funcionan de maravilla al momento de ofrecer mucha funcionalidad, gracias a que los mismos cuentan con un acceso directo al hardware del sistema,  gracias a esta gran característica, el desarrollador podrá ser capaz de permitir todas esas decisiones importantes en cuanto al rendimiento del sistema se refiere. Además, se caracterizan gracias a que son muy pequeños y a que esto realmente no limita su gran funcionamiento. Sin embargo, se sigue prefiriendo el uso de los dos kernel anteriores para los diversos sistemas que se utilizan hoy en día.

---------------
_User Mode vs Kernel Mode_
---------------

> ### **Diferncias**
>
|    |      Kernel Mode     |  User Mode |
|----------|:-------------:|------:|
| **Basico** |El programa tiene acceso directo y sin restricciones a los recursos del sistema   | La aplicación ejecuta y empieza. |
| **Interrupciones** |  Todo el sistema operativo podria caerse si una interrupción ocurre. | Solo cae un proceso si ocurre una interrupción. |
| **Modos** |  También conocido como modo maestro, modo privilegio o modo sistema | Conocido como modo sin privilegios, modo restrictivo o modo esclavo |
| **Espacio de direccion Virtual** |  Todos los procesos comparten un unico espacio | Todos los procesos tienen espacios de direccion virtual |
| **Nivel de privilegios** |  Las aplicaciones tienen mas privilegios comparados con el mode kernel| Tiene algunos privilegios |
| **Restricciones** |Puede acceder a ambos al usuario y al programa tambien como los programas de kernel no tienen restricciones   | Necesita acceder a los programas del kernel ya que no puede acceder a ellos directamente. |
| **Modo Bit** | modo es 0  | modo es 1|
| **Referencia de Memoria** | Capaz de acceder a ambas areas de memoria  | Solo se puede acceder a la memoria alocada en modo usuario |
| **Bloqueo de sistema** | Si Falla es severo y hace que las cosas sean mas complicadas  | Puede ser recuperado simplemente reanudando la sesión |
| **Acceso** | Solo funcionalidades escenciales son permitidas operar en este modo  | Programas de usuario pueden accesar y ejecutarse en este modo para un sistema dado |
| **Funcionalidad** | Puede referirse a cualquier bloqueo de memoria en el sistema y también puede dirigir el CPU para la ejecución de una instrucción, haciendolo un modo muy potente y significativo  | Es un modo de visualización tipico y standard, lo que implica que la información no puede ejecutarse  por si misma o hacer referencia a ningun bloque de memoria, este necesita un API para lograr estas cosas |
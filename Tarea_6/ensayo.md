# Controladores de dispositivo (Drivers)

Muchas veces cuando compramos una computadora o bien, la formateamos, hemos escuchado los famosos "drivers", cosas como hacerles un backup, buscar los que corresponden para cada componente y así. Pues bien estos drivers o controladores de dispositivo son los que permiten al sistema operativo interactuar con un periferico o componente de Hardware. Son esenciales puesto que sin ellos, el hardware seria inutilizable.

En otras palabras, un controlador actúa como un "traductor" entre el dispositivo y los programas que utilizan el dispositivo. Cada dispositivo tiene su propio sistema de comandos especializados que solamente conoce su controlador, sin embargo, la mayoría de los programas tienen acceso a los dispositivos usando comandos genéricos. El controlador, por lo tanto, acepta comandos genéricos de un programa y después los traduce a los comandos especializados para el dispositivo.

## Drivers universales y los desarrollados por fabricantes

Lo más lógico es pensar que sea el fabricante de hardware el que los desarrolle, y sucede en la gran mayoria de casos, pero por ejemplo, Microsoft hace drivers universales que funcionan con casi todo, como el del teclado o el del mouse y prueba de ello es que generalmente cuando instalamos windows 10 desde cero, no necesitamos instalar drivers de casi nada (A excepcion de ciertos componenetes donde debemos hacerlo para aprovechar el rendimiento de ellos o evitar problemas de compatibilidad)

Independientemente de quién sea el que desarrolle los controladores, los creadores de software se benefician de ellos. Por ejemplo, tu editor de texto, como Word, hace una llamada al driver de la impresora cuando tú quieres imprimir algo, e independientemente de qué modelo de impresora tengas va a funcionar igual. Lo mismo sucede con el ratón, el teclado o tus altavoces.

## Aplicando los conceptos a esta temática

Para desarrollar un driver y teniendo en consideracion que estos se deben comunicar con el hardware, lo logico es pensar que se necesita de un lenguaje de bajo nivel, porque asi tenemos un control directo sobre el hardware.

Por lo que con los conocimientos de esta materia que he adquirido, puedo aplicarlo y profundizarlo a esta tematica. Conceptos como interrupciones, movimiento de datos de memoria, etc, se podrian utilizar para el desarrollo de los mismos.

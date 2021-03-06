# Práctica 2: Bases de datos relacionales en MySQL

## Descripción

```
AEROPUERTO(CodIATA, Nombre, Ciudad, País)

TERMINALES(Número, CodIATA)

VUELO(CodVuelo, CodCompañia, AeropuertoOrigen, AeropuertoDestino, Estado)

ASIENTOS(CodAsiento, TipoClase)

PASAJEROS(DNI, Nombre, Apellido1, Apellido2)

RESERVA(Localizador, DNI,‎Precio)

RESERVA_VUELOS(Localizador, CodVuelo)

COMPAÑIA(CodCompañia, Nombre, Logo)
```

Partiendo del siguiente modelo relacional (incompleto, quizás) se requiere realizar la base de datos de un buscador de vuelos como [www.edreams.es](www.edreams.es) o [www.skyscanner.es](www.skyscanner.es). Tiene que tener las siguientes funcionalidades en diferentes archivos:

  *  [buscador-vuelos.sql] Creación de toda la estructura en MySQL
  *  [buscador-vuelos-mod.sql] Modificación de la estructura con varias instrucciones para insertar y quitar una columna, añadir y quitar una propiedad (UNIQUE, AUTO_INCREMENT, etc.) y añadir y quitar una PRIMARY O FOREIGN KEY.
  *  [buscador-vuelos-datos.sql] Inserción de datos al menos 5 filas por cada tabla. Se requiere actualizar y borrar al menos 3 datos.
  *  [buscador-vuelos-usuarios.sql] Creación de usuarios posibles (anónimo que consulta, admin o por ejemplo un usuario que realiza una reserva) junto con sus permisos.

En algunas funcionalidades como reservar un vuelo puede conllevar varias instrucciones para realizarlo (por ejemplo la reserva de ida y vuelta) pero en esos casos marcarlo como una transacción.


## Fecha límite de entrega

En Moodle.
## Evaluación

Diseño, conceptos y razonamientos en todos los apartados correctos. Será importante la , mayor será la calificación.
## Número de personas

Se trabajará por parejas.
## Modo de entrega

Varios archivos .sql aportando en los archivos los comentarios que sean necesarios.


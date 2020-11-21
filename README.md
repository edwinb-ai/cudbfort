# Dinámica Browniana con Interacciones Hidrodinámicas

Este es un código modular para realizar dinámica browniana con interacciones hidrodinámicas
usando el clásico algoritmo de Ermak y McCammon.

Esta versión también incluye interacciones hidrodinámicas empleando el tensor de
Rotne-Prager-Yamakawa (RPY). El tensor se descompone mediante el algoritmo de Cholesky
para obtener los desplazamientos estocásticos.

# Uso general

El código está disponible para uso general y se compila mediante CMake y Ninja.
Primero, se ejecuta CMake creando un directorio para compilación

```
mkdir build
cd build/
cmake -GNinja ..
ninja
```

aquí es importante la bandera `-GNinja` para habilitar la compilación con `ninja`.
Una vez hecho esto el proyecto se compilará y se generará un ejecutable `dbrown`
que podrá ser utilizado llamándolo

```
./dbrown
```

Si no se tiene `ninja`, se puede omitir y se podrá emplear `make`, usando la siguiente
combinación de comandos

```
mkdir build
cd build/
cmake ..
make -j
```

donde nuevamente se generará el ejecutable `dbrown` y se podrá emplear como antes.

Se espera que se tenga `gfortran` instalado, pero cualquier otro compilador
de Fortran podrá ser usado.

## Librerías

`LAPACK` y `BLAS` deben estar instalados en el sistema
ya que son necesarios para compilar y realizar operaciones de álgebra lineal.

# Observables

Por el momento, el código solamente general las siguientes observables:

- Función de distribución radial (RDF).
# Hello Elixir

## Interactive Bash in Iexiex

For init initeractive Elixir type:

```bash
    iex
```

## How to run

```bash
    elixir simple.exs
```

## Learning

- Pattern Matching

```bash
    elixir simple.exs
```

### Data Types

**RegeX:** Expresiones regulares

```bash
Regex.run ~r{[aeiou]}, "caterpillar"
```

**Tuplas:** Se escriben entre parentesis, y los elementos separador por comas.

```bash
{ 1,2 } { :ok , 42, "next"}
```

_Ejemplo uso:_

Apertura de archivos y verificación del estado con atomo.

```bash
{ :ok , archivo } = Archivo.open ( "mix.exs" )
```

## Names

- Module
- record
- protocol
- behavior

> - names start with an uppercase letter
> - Are BumpyCase.

All other identifiers start with a lowercase letter or an
underscore, and by convention use underscores between words.

## Comparison Ordering

La comparación se realiza en orden natural en caso de necesitar elegir utiliza la siguiente regla.

> _number < atom < reference < function < port < pid < tuple < map < list < binary_

## Alcance variables

En elixir de alcance variable tiene un alcance léxico. La unidad básica del alcance es el cuerpo de la función. Las variables definidas en una función (incluidos sus parámetros) son locales para esa función. Además, los módulos definen un alcance para las variables locales, pero estas son accesibles solo en el nivel superior de ese módulo, y no en las funciones definidas en el módulo.

## Extensiones de Archivos

**_.exs_ :** Correr codigo directamente desde el archivo fuente (La _s_ es para pensar el archivo como Script).

**_.ex_ :** Para archivos a compilar y usar luego puede omitir ls _s_.

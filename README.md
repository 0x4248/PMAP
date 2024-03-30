# PMAP

A simple image format that is human readable and editable

## Format

The format is a simple text file with the following structure:

```
s:3x1
f:0,0,0
--PIXELS--
0,0:255,0,0
1,0:0,255,0
2,0:0,0,255
--END--
```

This will create a 3x1 image with a simple red, green and blue pixel.

## Command line

The command line tool can convert a image to a pmap file and view and export a pmap file.

```
Usage:
    pmap [options] <input> <output>
    -a - image to pmap
    -b - pmap to image
    -v - view pmap
```

## Licence

This project is licensed under the GNU General Public License v3.0 - see the [LICENCE](LICENCE) file for details
# ocrad-docker
GNU ocrad in a docker container

Current version is `0.25`.

Documentation [available online](https://www.gnu.org/software/ocrad/manual/ocrad_manual.html).

Working directory is `/data`, so best mount files to recoginize into `/data`.

## Usage

```
docker run kbai/ocrad --help
```

<!-- BEGIN-EVAL echo '<pre>'; docker run kbai/ocrad -h; echo '</pre>' -->
<pre>
GNU Ocrad is an OCR (Optical Character Recognition) program based on a
feature extraction method. It reads images in pbm (bitmap), pgm
(greyscale) or ppm (color) formats and produces text in byte (8-bit) or
UTF-8 formats. The pbm, pgm and ppm formats are collectively known as pnm.

Ocrad includes a layout analyser able to separate the columns or blocks
of text normally found on printed pages.

For best results the characters should be at least 20 pixels high. If
they are smaller, try the --scale option. Scanning the image at 300 dpi
usually produces a character size good enough for ocrad.
Merged, very bold or very light (broken) characters are normally not
recognized correctly. Try to avoid them.

Usage: /usr/local/bin/ocrad [options] [files]

Options:
  -h, --help                display this help and exit
  -V, --version             output version information and exit
  -a, --append              append text to output file
  -c, --charset=<name>      try '--charset=help' for a list of names
  -e, --filter=<name>       try '--filter=help' for a list of names
  -E, --user-filter=<file>  user-defined filter, see manual for format
  -f, --force               force overwrite of output file
  -F, --format=<fmt>        output format (byte, utf8)
  -i, --invert              invert image levels (white on black)
  -l, --layout              perform layout analysis
  -o, --output=<file>       place the output into <file>
  -q, --quiet               suppress all messages
  -s, --scale=[-]<n>        scale input image by [1/]<n>
  -t, --transform=<name>    try '--transform=help' for a list of names
  -T, --threshold=<n%>      threshold for binarization (0-100%)
  -u, --cut=<l,t,w,h>       cut input image by given rectangle
  -v, --verbose             be verbose
  -x, --export=<file>       export results in ORF format to <file>

If no files are specified, ocrad reads the image from standard input.
If the -o option is not specified, ocrad sends text to standard output.

Exit status: 0 for a normal exit, 1 for environmental problems (file
not found, invalid flags, I/O errors, etc), 2 to indicate a corrupt or
invalid input file, 3 for an internal consistency error (eg, bug) which
caused ocrad to panic.

Report bugs to bug-ocrad@gnu.org
Ocrad home page: http://www.gnu.org/software/ocrad/ocrad.html
General help using GNU software: http://www.gnu.org/gethelp
</pre>

<!-- END-EVAL -->

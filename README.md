# Metallophone

Simple Lilypond scores for toy metallophones or xylophones (8 bars, 1 octave, C major scale) of well-known French children's songs.

Sample PDF outputs are in the `sample-outputs` folder. The full version of a published book with all the scores is freely available for download [on the Github release page](https://github.com/gvellut/metallophone/releases/tag/v2) (file `book_fr.pdf`).

## Build

Lilypond needs to be installed and reachable from the command-line.

For each song (file ending in `.ly`, except `common` and `colorize`), in order to generate a PDF, just run:

```lilypond <file>.ly```

Alternatively, `build_lilypond.ps1` or `build.sh` can be used, but there are additional dependencies such as Latex or FluidSynth.

## Usage

To use, print the score and color the numbered circles according to the color scheme of the instrument: The biggest bar is 1 and the smallest is 8, as shown below.

![xylophone](https://raw.githubusercontent.com/gvellut/metallophone/master/xylophone.png "Xylophone")

Then, when playing, simply follow the colors to know which bar to strike.

## Full book

The full French version of the book (interior + cover) can be downloaded from the [v2 release page](https://github.com/gvellut/metallophone/releases/tag/v2) (file `book_fr.pdf`). It has the same content as the version currently available for sale on Amazon. The pages of the scores are printed on one side so the pages can be cut out and set next to each other when playing.

The book can also be bought preprinted from Amazon directly:
- [Amazon France](https://www.amazon.fr/dp/1983995339)
- [Amazon USA](https://www.amazon.com/dp/1983995339)
- ... and so on: The ASIN **1983995339** can be used to find it in the Amazon of other countries.

## Acknowledgement

Most scores in this repository are adapted from LilyPond files distributed under CC-BY license:
- [Jean-Michel Thiémonge / Piano GNU](https://pianognu.blogspot.fr) (CC-BY)
- [Wikisource Partitions](https://fr.wikisource.org/wiki/Catégorie:Partitions) (CC-BY-SA)

See inside the LilyPond files for details.

The modified scores are distributed under CC-BY-SA.

# vim-interestingwords

> Word highlighting and navigation throughout out the buffer.


vim-interestingwords highlights the occurrences of the word under the cursor throughout the buffer. Different words can be highlighted at the same time. The plugin also enables one to navigate through the highlighted words in the buffer just like one would through the results of a search.

![Screenshot](https://i.imgbox.com/5k3OJWIk.png)

## Installation

The recommended installation is through `vim-plug`:

```vimscript
Plug 'lfv89/vim-interestingwords'
```

## Usage

- Highlight with ``<Leader>k``
- Navigate highlighted words with ``n`` and ``N``
- Clear every word highlight with ``<Leader>K`` throughout the buffer
- Change the upcoming highlight color with ``:InterestingWordsNextColor`` or ``:InterestingWordsRandomNextColor`` if you want a different shade before toggling
- Highlight arbitrary matches with ``:InterestingWordRegex {pattern}``

### Highlighting Words

``<Leader>k`` will act as a **toggle**, so you can use it to highlight and remove the highlight from a given word. Note that you can highlight different words at the same time.

### Highlighting With a Regex

Use ``:InterestingWordRegex {pattern}`` to toggle highlights for an arbitrary Vim regular expression. The pattern is passed straight to ``matchadd()``, so you can use the full syntax (for example ``:InterestingWordRegex \vfoo\s+bar``). Repeating the command with the same pattern removes the highlight.

### Navigating Highlights

With a highlighted word **under your cursor**, you can **navigate** through the occurrences of this word with ``n`` and ``N``, just as you would if you were using a traditional search.

### Clearing (every) Highlight

Finally, if you don't want to toggle every single highlighted word and want to clear all of them, just hit ``<Leader>K``

### Picking the Next Color

If you'd prefer a different color for the next highlighted word, run ``:InterestingWordsNextColor`` before toggling the highlight. The command cycles to the next unused highlight group so the following word you add receives a new color without clearing existing highlights. Alternatively, ``:InterestingWordsRandomNextColor`` picks a random unused highlight group so you don't need to decide which color comes next.

## Configuration

The plugin comes with those default mapping, but you can change it as you like:

`let g:interestingWordsDefaultMappings = 0` if to disable default mapping

```vimscript
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>
```

Thanks to **@gelguy** it is now possible to randomise and configure your own colors

To configure the colors for a GUI, add this to your .vimrc:

```vimscript
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
```

And for a terminal:

```vimscript
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
```

Also, if you want to randomise the colors (applied to each new buffer), add this to your .vimrc:

```vimscript
let g:interestingWordsRandomiseColors = 1
```

## Credits

The idea to build this plugin came from the **@stevelosh** video's where he shows some pretty cool configurations from his .vimrc. He named this configuration interesting words, and I choose to keep the name for this plugin. The video is on youtube: https://www.youtube.com/watch?v=xZuy4gBghho

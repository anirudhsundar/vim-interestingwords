" --------------------------------------------------------------------
" This plugin was inspired and based on Steve Losh's interesting words
" .vimrc config https://www.youtube.com/watch?v=xZuy4gBghho
" --------------------------------------------------------------------

let s:interestingWordsGUIColors = ['#00005f', '#000087', '#0000af', '#0000d7', '#0000ff', '#005f00', '#005f5f', '#005f87', '#005faf', '#005fd7', '#005fff', '#008700', '#00875f', '#008787', '#0087af', '#0087d7', '#0087ff', '#00af00', '#00af5f', '#00af87', '#00afaf', '#00afd7', '#00afff', '#00d700', '#00d75f', '#00d787', '#00d7af', '#00d7d7', '#00d7ff', '#00ff00', '#00ff5f', '#00ff87', '#00ffaf', '#00ffd7', '#00ffff', '#5f0000', '#5f005f', '#5f0087', '#5f00af', '#5f00d7', '#5f00ff', '#5f5f00', '#5f5f5f', '#5f5f87', '#5f5faf', '#5f5fd7', '#5f5fff', '#5f8700', '#5f875f', '#5f8787', '#5f87af', '#5f87d7', '#5f87ff', '#5faf00', '#5faf5f', '#5faf87', '#5fafaf', '#5fafd7', '#5fafff', '#5fd700', '#5fd75f', '#5fd787', '#5fd7af', '#5fd7d7', '#5fd7ff', '#5fff00', '#5fff5f', '#5fff87', '#5fffaf', '#5fffd7', '#5fffff', '#870000', '#87005f', '#870087', '#8700af', '#8700d7', '#8700ff', '#875f00', '#875f5f', '#875f87', '#875faf', '#875fd7', '#875fff', '#878700', '#87875f', '#878787', '#8787af', '#8787d7', '#8787ff', '#87af00', '#87af5f', '#87af87', '#87afaf', '#87afd7', '#87afff', '#87d700', '#87d75f', '#87d787', '#87d7af', '#87d7d7', '#87d7ff', '#87ff00', '#87ff5f', '#87ff87', '#87ffaf', '#87ffd7', '#87ffff', '#af0000', '#af005f', '#af0087', '#af00af', '#af00d7', '#af00ff', '#af5f00', '#af5f5f', '#af5f87', '#af5faf', '#af5fd7', '#af5fff', '#af8700', '#af875f', '#af8787', '#af87af', '#af87d7', '#af87ff', '#afaf00', '#afaf5f', '#afaf87', '#afafaf', '#afafd7', '#afafff', '#afd700', '#afd75f', '#afd787', '#afd7af', '#afd7d7', '#afd7ff', '#afff00', '#afff5f', '#afff87', '#afffaf', '#afffd7', '#afffff', '#d70000', '#d7005f', '#d70087', '#d700af', '#d700d7', '#d700ff', '#d75f00', '#d75f5f', '#d75f87', '#d75faf', '#d75fd7', '#d75fff', '#d78700', '#d7875f', '#d78787', '#d787af', '#d787d7', '#d787ff', '#d7af00', '#d7af5f', '#d7af87', '#d7afaf', '#d7afd7', '#d7afff', '#d7d700', '#d7d75f', '#d7d787', '#d7d7af', '#d7d7d7', '#d7d7ff', '#d7ff00', '#d7ff5f', '#d7ff87', '#d7ffaf', '#d7ffd7', '#d7ffff', '#ff0000', '#ff005f', '#ff0087', '#ff00af', '#ff00d7', '#ff00ff', '#ff5f00', '#ff5f5f', '#ff5f87', '#ff5faf', '#ff5fd7', '#ff5fff', '#ff8700', '#ff875f', '#ff8787', '#ff87af', '#ff87d7', '#ff87ff', '#ffaf00', '#ffaf5f', '#ffaf87', '#ffafaf', '#ffafd7', '#ffafff', '#ffd700', '#ffd75f', '#ffd787', '#ffd7af', '#ffd7d7', '#ffd7ff', '#ffff00', '#ffff5f', '#ffff87', '#ffffaf', '#ffffd7', '#ffffff', '#080808', '#121212', '#1c1c1c', '#262626', '#303030', '#3a3a3a', '#444444', '#4e4e4e', '#585858', '#626262', '#6c6c6c', '#767676', '#808080', '#8a8a8a', '#949494', '#9e9e9e', '#a8a8a8', '#b2b2b2', '#bcbcbc', '#c6c6c6', '#d0d0d0', '#dadada', '#e4e4e4', '#eeeeee']
let s:interestingWordsTermColors = ['17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255']

let g:interestingWordsGUIColors = exists('g:interestingWordsGUIColors') ? g:interestingWordsGUIColors : s:interestingWordsGUIColors
let g:interestingWordsTermColors = exists('g:interestingWordsTermColors') ? g:interestingWordsTermColors : s:interestingWordsTermColors

let s:hasBuiltColors = 0

let s:interestingWords = []
let s:interestingModes = []
let s:mids = {}
let s:recentlyUsed = []
let s:nextColorIndex = -1

function! ColorWord(word, mode)
  if !(s:hasBuiltColors)
    call s:buildColors()
  endif

  " select the index for the next highlight
  let n = s:selectNextIndex()
  if (n == -1)
    if !(exists('g:interestingWordsCycleColors') && g:interestingWordsCycleColors)
      echom "InterestingWords: max number of highlight groups reached " . len(s:interestingWords)
      return
    else
      let n = s:recentlyUsed[0]
      call UncolorWord(s:interestingWords[n])
    endif
  endif

  let mid = 595129 + n
  let s:interestingWords[n] = a:word
  let s:interestingModes[n] = a:mode
  let s:mids[a:word] = mid

  call s:apply_color_to_word(n, a:word, a:mode, mid)

  call s:markRecentlyUsed(n)

endfunction

function! s:selectNextIndex() abort
  if s:nextColorIndex >= 0 && s:isIndexAvailable(s:nextColorIndex)
    let idx = s:nextColorIndex
    let s:nextColorIndex = -1
    return idx
  endif
  let s:nextColorIndex = -1
  return index(s:interestingWords, 0)
endfunction

function! s:isIndexAvailable(idx) abort
  return a:idx >= 0 && a:idx < len(s:interestingWords) && s:interestingWords[a:idx] == 0
endfunction

function! s:availableIndexes() abort
  let available = []
  let idx = 0
  for word in s:interestingWords
    if word == 0
      call add(available, idx)
    endif
    let idx += 1
  endfor
  return available
endfunction

function! InterestingWordsNextColor() abort
  if !(s:hasBuiltColors)
    call s:buildColors()
  endif

  let current = index(s:interestingWords, 0)
  if current == -1
    echohl WarningMsg | echomsg "InterestingWords: all highlight groups are currently in use."
    return
  endif

  let next = s:nextUnusedIndexAfter(current)
  if next == -1
    echohl WarningMsg | echomsg "InterestingWords: no alternative unused highlight colors available."
    return
  endif

  let s:nextColorIndex = next
  call s:announceNextColor(next)
endfunction

function! InterestingWordsRandomNextColor() abort
  if !(s:hasBuiltColors)
    call s:buildColors()
  endif

  let available = s:availableIndexes()
  if empty(available)
    echohl WarningMsg | echomsg "InterestingWords: all highlight groups are currently in use."
    return
  endif

  let current = index(s:interestingWords, 0)
  if current == -1
    echohl WarningMsg | echomsg "InterestingWords: all highlight groups are currently in use."
    return
  endif

  let candidates = []
  for idx in available
    if idx != current
      call add(candidates, idx)
    endif
  endfor

  if empty(candidates)
    echohl WarningMsg | echomsg "InterestingWords: no alternative unused highlight colors available."
    return
  endif

  let pickIndex = len(candidates) == 1 ? 0 : s:Random(len(candidates))
  if pickIndex >= len(candidates)
    let pickIndex = len(candidates) - 1
  endif
  let pick = candidates[pickIndex]
  let s:nextColorIndex = pick
  call s:announceNextColor(pick)
endfunction

function! s:nextUnusedIndexAfter(idx) abort
  let total = len(s:interestingWords)
  if total <= 1
    return -1
  endif
  let i = (a:idx + 1) % total
  while i != a:idx
    if s:isIndexAvailable(i)
      return i
    endif
    let i = (i + 1) % total
  endwhile
  return -1
endfunction

function! s:announceNextColor(idx) abort
  let ui = s:uiMode()
  let palette = ui ==# 'gui' ? g:interestingWordsGUIColors : g:interestingWordsTermColors
  if a:idx >= 0 && a:idx < len(palette)
    echom printf('InterestingWords: next color set to %s (group %d).', palette[a:idx], a:idx + 1)
  else
    echom printf('InterestingWords: next highlight group set to %d.', a:idx + 1)
  endif
endfunction

function! s:apply_color_to_word(n, word, mode, mid)
  let case = s:checkIgnoreCase(a:word) ? '\c' : '\C'
  if a:mode == 'v'
    let pat = case . '\V\zs' . escape(a:word, '\') . '\ze'
  else
    let pat = case . '\V\<' . escape(a:word, '\') . '\>'
  endif

  try
    call matchadd("InterestingWord" . (a:n + 1), pat, 1, a:mid)
  catch /E801/      " match id already taken.
  endtry
endfunction

function! s:nearest_group_at_cursor() abort
  let l:matches = {}
  for l:match_item in getmatches()
    let l:mids = filter(items(s:mids), 'v:val[1] == l:match_item.id')
    if len(l:mids) == 0
      continue
    endif
    let l:word = l:mids[0][0]
    let l:position = match(getline('.'), l:match_item.pattern)
    if l:position > -1
      if col('.') > l:position && col('.') <= l:position + len(l:word)
        return l:word
      endif
    endif
  endfor
  return ''
endfunction

function! UncolorWord(word)
  let index = index(s:interestingWords, a:word)

  if (index > -1)
    let mid = s:mids[a:word]

    silent! call matchdelete(mid)
    let s:interestingWords[index] = 0
    unlet s:mids[a:word]
  endif
endfunction

function! s:getmatch(mid) abort
  return filter(getmatches(), 'v:val.id==a:mid')[0]
endfunction

function! WordNavigation(direction)
  let currentWord = s:nearest_group_at_cursor()

  if (s:checkIgnoreCase(currentWord))
    let currentWord = tolower(currentWord)
  endif

  if (index(s:interestingWords, currentWord) > -1)
    let l:index = index(s:interestingWords, currentWord)
    let l:mode = s:interestingModes[index]
    let case = s:checkIgnoreCase(currentWord) ? '\c' : '\C'
    if l:mode == 'v'
      let pat = case . '\V\zs' . escape(currentWord, '\') . '\ze'
    else
      let pat = case . '\V\<' . escape(currentWord, '\') . '\>'
    endif
    let searchFlag = ''
    if !(a:direction)
      let searchFlag = 'b'
    endif
    call search(pat, searchFlag)
  else
    try
      if (a:direction)
        normal! n
      else
        normal! N
      endif
    catch /E486/
      echohl WarningMsg | echomsg "E486: Pattern not found: " . @/
    endtry
  endif
endfunction

function! InterestingWords(mode) range
  if a:mode == 'v'
    let currentWord = s:get_visual_selection()
  else
    let currentWord = expand('<cword>') . ''
  endif
  if !(len(currentWord))
    return
  endif
  if (s:checkIgnoreCase(currentWord))
    let currentWord = tolower(currentWord)
  endif
  if (index(s:interestingWords, currentWord) == -1)
    call ColorWord(currentWord, a:mode)
  else
    call UncolorWord(currentWord)
  endif
endfunction

function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

function! UncolorAllWords()
  for word in s:interestingWords
    " check that word is actually a String since '0' is falsy
    if (type(word) == 1)
      call UncolorWord(word)
    endif
  endfor
endfunction

function! RecolorAllWords()
  let i = 0
  for word in s:interestingWords
    if (type(word) == 1)
      let mode = s:interestingModes[i]
      let mid = s:mids[word]
      call s:apply_color_to_word(i, word, mode, mid)
    endif
    let i += 1
  endfor
endfunction

" returns true if the ignorecase flag needs to be used
function! s:checkIgnoreCase(word)
  " return false if case sensitive is used
  if (exists('g:interestingWordsCaseSensitive'))
    return !g:interestingWordsCaseSensitive
  endif
  " checks ignorecase
  " and then if smartcase is on, check if the word contains an uppercase char
  return &ignorecase && (!&smartcase || (match(a:word, '\u') == -1))
endfunction

" moves the index to the back of the s:recentlyUsed list
function! s:markRecentlyUsed(n)
  let index = index(s:recentlyUsed, a:n)
  call remove(s:recentlyUsed, index)
  call add(s:recentlyUsed, a:n)
endfunction

function! s:uiMode()
  " Stolen from airline's airline#init#gui_mode()
  return ((has('nvim') && exists('$NVIM_TUI_ENABLE_TRUE_COLOR') && !exists("+termguicolors"))
     \ || has('gui_running') || (has("termtruecolor") && &guicolors == 1) || (has("termguicolors") && &termguicolors == 1)) ?
      \ 'gui' : 'cterm'
endfunction

" initialise highlight colors from list of GUIColors
" initialise length of s:interestingWord list
" initialise s:recentlyUsed list
function! s:buildColors()
  if (s:hasBuiltColors)
    return
  endif
  let ui = s:uiMode()
  let wordColors = (ui == 'gui') ? g:interestingWordsGUIColors : g:interestingWordsTermColors
  if (exists('g:interestingWordsRandomiseColors') && g:interestingWordsRandomiseColors)
    " fisher-yates shuffle
    let i = len(wordColors)-1
    while i > 0
      let j = s:Random(i)
      let temp = wordColors[i]
      let wordColors[i] = wordColors[j]
      let wordColors[j] = temp
      let i -= 1
    endwhile
  endif
  " select ui type
  " highlight group indexed from 1
  let currentIndex = 1
  for wordColor in wordColors
    execute 'hi! def InterestingWord' . currentIndex . ' ' . ui . 'bg=' . wordColor . ' ' . ui . 'fg=Black'
    call add(s:interestingWords, 0)
    call add(s:interestingModes, 'n')
    call add(s:recentlyUsed, currentIndex-1)
    let currentIndex += 1
  endfor
  let s:hasBuiltColors = 1
endfunc

" helper function to get random number between 0 and n-1 inclusive
function! s:Random(n)
  let timestamp = reltimestr(reltime())[-2:]
  return float2nr(floor(a:n * timestamp/100))
endfunction

if !exists('g:interestingWordsDefaultMappings') || g:interestingWordsDefaultMappings != 0
    let g:interestingWordsDefaultMappings = 1
endif

if g:interestingWordsDefaultMappings && !hasmapto('<Plug>InterestingWords')
    nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
    vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
    nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

    nnoremap <silent> n :call WordNavigation(1)<cr>
    nnoremap <silent> N :call WordNavigation(0)<cr>
endif

if g:interestingWordsDefaultMappings
   try
      nnoremap <silent> <unique> <script> <Plug>InterestingWords
               \ :call InterestingWords('n')<cr>
      vnoremap <silent> <unique> <script> <Plug>InterestingWords
               \ :call InterestingWords('v')<cr>
      nnoremap <silent> <unique> <script> <Plug>InterestingWordsClear
               \ :call UncolorAllWords()<cr>
      nnoremap <silent> <unique> <script> <Plug>InterestingWordsForeward
               \ :call WordNavigation(1)<cr>
      nnoremap <silent> <unique> <script> <Plug>InterestingWordsBackward
               \ :call WordNavigation(0)<cr>
   catch /E227/
   endtry
endif

command! -nargs=0 -bar InterestingWordsNextColor call InterestingWordsNextColor()
command! -nargs=0 -bar InterestingWordsRandomNextColor call InterestingWordsRandomNextColor()

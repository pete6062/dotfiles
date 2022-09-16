" 220824 JWP 
" keyboard quickfix
nnoremap z= <Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>

" map leader key.
let mapleader = ' '

" build all
nnoremap <leader>bb <Cmd>call VSCodeNotify('cmake.buildAll')<CR>
xnoremap <leader>bb <Cmd>call VSCodeNotify('cmake.buildAll')<CR>

" launch target
nnoremap <leader>ll <Cmd>call VSCodeNotify('cmake.launchTarget')<CR>
xnoremap <leader>ll <Cmd>call VSCodeNotify('cmake.launchTarget')<CR>

" select launch target
nnoremap <leader>lt <Cmd>call VSCodeNotify('cmake.selectLaunchTarget')<CR>
xnoremap <leader>lt <Cmd>call VSCodeNotify('cmake.selectLaunchTarget')<CR>

" launch debugger
nnoremap <leader>dd <Cmd>call VSCodeNotify('cmake.debugTarget')<CR>
xnoremap <leader>dd <Cmd>call VSCodeNotify('cmake.debugTarget')<CR>

" debug step into
nnoremap <leader>dj <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
xnoremap <leader>dj <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>

" debug step out
nnoremap <leader>dk <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
xnoremap <leader>dk <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>

" debug step over
nnoremap <leader>dl <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
xnoremap <leader>dl <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>

" debug stop
nnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
xnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>

" debug continue
nnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
xnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>

" debug toggle breakpoint
nnoremap <leader>db <Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>
xnoremap <leader>db <Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>

" remove all breakpoints
nnoremap <leader>dB <Cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllBreakpoints')<CR>
xnoremap <leader>dB <Cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllBreakpoints')<CR>

" debug add watch
nnoremap <leader>dw <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>
xnoremap <leader>dw <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>

" workbench navigation
nnoremap <leader>je <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>
xnoremap <leader>je <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>

nnoremap <leader>jx <Cmd>call VSCodeNotify('workbench.view.extensions')<CR>
xnoremap <leader>jx <Cmd>call VSCodeNotify('workbench.view.extensions')<CR>

nnoremap <leader>jt <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
xnoremap <leader>jt <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>

nnoremap <leader>jd <Cmd>call VSCodeNotify('workbench.view.debug')<CR>
xnoremap <leader>jd <Cmd>call VSCodeNotify('workbench.view.debug')<CR>

nnoremap <leader>js <Cmd>call VSCodeNotify('workbench.view.search')<CR>
xnoremap <leader>js <Cmd>call VSCodeNotify('workbench.view.search')<CR>

nnoremap <leader>jg <Cmd>call VSCodeNotify('workbench.view.scm')<CR>
xnoremap <leader>jg <Cmd>call VSCodeNotify('workbench.view.scm')<CR>

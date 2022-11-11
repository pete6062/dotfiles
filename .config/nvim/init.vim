" 220824 JWP 
" keyboard quickfix
nnoremap z= <Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>

" map leader key.
let mapleader = ' '

" C++ WITH CMAKE
" Build all
nnoremap <leader>ba <Cmd>call VSCodeNotify('cmake.buildAll')<CR>
xnoremap <leader>ba <Cmd>call VSCodeNotify('cmake.buildAll')<CR>

" Launch target
nnoremap <leader>lt <Cmd>call VSCodeNotify('cmake.launchTarget')<CR>
xnoremap <leader>lt <Cmd>call VSCodeNotify('cmake.launchTarget')<CR>

" Select launch target
nnoremap <leader>st <Cmd>call VSCodeNotify('cmake.selectLaunchTarget')<CR>
xnoremap <leader>st <Cmd>call VSCodeNotify('cmake.selectLaunchTarget')<CR>

" Debug target
nnoremap <leader>dt <Cmd>call VSCodeNotify('cmake.debugTarget')<CR>
xnoremap <leader>dt <Cmd>call VSCodeNotify('cmake.debugTarget')<CR>

" DEBUGGING
" Launch without debugging
nnoremap <leader>dr <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>
xnoremap <leader>dr <Cmd>call VSCodeNotify('workbench.action.debug.run')<CR>

" Launch with debugging
nnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>
xnoremap <leader>ds <Cmd>call VSCodeNotify('workbench.action.debug.start')<CR>

" Step into
nnoremap <leader>dj <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>
xnoremap <leader>dj <Cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>

" Step out
nnoremap <leader>dk <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>
xnoremap <leader>dk <Cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>

" Step over
nnoremap <leader>dl <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>
xnoremap <leader>dl <Cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>

" Stop
nnoremap <leader>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>
xnoremap <leader>dS <Cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>

" Continue
nnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>
xnoremap <leader>dc <Cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>

" Toggle breakpoint
nnoremap <leader>db <Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>
xnoremap <leader>db <Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>

" Remove all breakpoints
nnoremap <leader>dB <Cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllBreakpoints')<CR>
xnoremap <leader>dB <Cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllBreakpoints')<CR>

" Add watch
nnoremap <leader>dw <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>
xnoremap <leader>dw <Cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>

" WORKBENCH NAVIGATION
nnoremap <leader>jj <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>
xnoremap <leader>jj <Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>

" Jump to File Explorer
nnoremap <leader>je <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>
xnoremap <leader>je <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>

" Jump to Extensions
nnoremap <leader>jx <Cmd>call VSCodeNotify('workbench.view.extensions')<CR>
xnoremap <leader>jx <Cmd>call VSCodeNotify('workbench.view.extensions')<CR>

" Jump to Terminal
nnoremap <leader>jt <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>
xnoremap <leader>jt <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>

" Jump to Debug
nnoremap <leader>jd <Cmd>call VSCodeNotify('workbench.view.debug')<CR>
xnoremap <leader>jd <Cmd>call VSCodeNotify('workbench.view.debug')<CR>

" Jump to Search
nnoremap <leader>js <Cmd>call VSCodeNotify('workbench.view.search')<CR>
xnoremap <leader>js <Cmd>call VSCodeNotify('workbench.view.search')<CR>

" Jump to Source Control
nnoremap <leader>jg <Cmd>call VSCodeNotify('workbench.view.scm')<CR>
xnoremap <leader>jg <Cmd>call VSCodeNotify('workbench.view.scm')<CR>

" PROJECT NAVIGATION
" Go to previous
nnoremap <leader>gp <Cmd>call VSCodeNotify('workbench.action.')<CR>

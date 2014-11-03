scriptencoding utf-8

if has("gui_macvim")
	" Commant-T
	macmenu &File.New\ Tab key=<nop>
	map <D-t> :CommandT<CR>
endif

set guioptions-=m
set guioptions-=T

set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=b

set guioptions+=a

if has("eval")
	fun! SetFont(fonts)
		let l:fonts = a:fonts . ","
		while l:fonts != ""
			let l:font = strpart(l:fonts, 0, stridx(l:fonts, ","))
			let l:fonts = strpart(l:fonts, stridx(l:fonts, ",") + 1)
			try
				execute "set guifont=" . l:font
				break
			catch
			endtry
		endwhile
	endfun

	if has('gui_macvim')
		call SetFont("Meslo_LG_M_DZ_Regular:h14")
	endif
endif

if has('gui_macvim')
	set transp=1

	set fuopt+=maxhorz
endif

" vim: set sw=4 sts=4 et tw=80
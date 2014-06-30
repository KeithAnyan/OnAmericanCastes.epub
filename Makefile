
ALL : OnAmericanCastes.epub OnAmericanCastes.mobi OnAmericanCastes.pdf

OnAmericanCastes.epub: 
	rm -f OnAmericanCastes.epub
	zip -X0 OnAmericanCastes.epub mimetype
	zip -Xur9D OnAmericanCastes.epub META-INF/* OEBPS/*

OnAmericanCastes.mobi: OnAmericanCastes.epub
	rm -f OnAmericanCastes.mobi
	ebook-convert OnAmericanCastes.epub OnAmericanCastes.mobi

OnAmericanCastes.pdf: OnAmericanCastes.epub
	rm -f OnAmericanCastes.pdf
	ebook-convert OnAmericanCastes.epub OnAmericanCastes.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

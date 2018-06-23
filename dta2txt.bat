REN dta_normalized\* *.xml
FOR /R %%G in (dta_normalized\*.XML) DO msxsl.exe "%%G" tei2txt.xsl -o "dta_normalized\%%~nG.TXT"
COPY dta_normalized\*.txt dta_normalized\dta_normalized_all.txt
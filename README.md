## dta_emb
Instructions and supporting tools for training word embeddings for historical (ca. 1600 - 1900) 
German based on the texts of the [Deutsches Textarchiv](http://www.deutschestextarchiv.de/) using [fastText](https://github.com/facebookresearch/fastText). 

A compressed archive of the combined plain text, currently including *3,287* works, is provided [here](about:blank) 
so that you can directly proceed with model training. A pre-trained model can be obtained from [here](about:blank).

### Linux
* Follow the instructions for [building fastText](https://github.com/facebookresearch/fastText#building-fasttext)

1. Download the [DTA](http://www.deutschestextarchiv.de/) normalized XML files
``wget -i dta_normalized.txt -P dta_normalized``

2. Transform the [DTA](http://www.deutschestextarchiv.de/) normalized XML files into plain text
``xsltproc tei2txt.xsl dta_normalized/* -o dta_normalized/*.txt``

3. Concatenate all plain text files into a single text file
``cp dta_normalized/*.txt dta_normalized/dta_normalized_all.txt``

4. Compute word embeddings using [fastText](https://github.com/facebookresearch/fastText)
``fasttext skipgram -input dta_normalized/dta_normalized_all.txt -output dta_emb``

### Windows
* Get ``wget.exe`` from https://eternallybored.org/misc/wget/
* Get ``msxsl.exe`` from https://www.microsoft.com/en-us/download/details.aspx?id=21714
* Get ``fasttext.exe`` from https://github.com/xiamx/fastText/releases

1. Download the [DTA](http://www.deutschestextarchiv.de/) normalized XML files
``wget.exe -i dta_normalized.txt -P dta_normalized``

2. Run a batch script to convert the XML files to a combined plain text file
``dta2txt.bat``

3. Compute word embeddings using [fastText](https://github.com/facebookresearch/fastText)
``fasttext.exe skipgram -input dta_normalized\dta_normalized_all.txt -output dta_emb``
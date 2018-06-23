## dta_emb
Instructions and supporting tools for training word embeddings for historical (ca. 1600 - 1900) 
German based on the texts of the [Deutsches Textarchiv](http://www.deutschestextarchiv.de/) using [fastText](https://github.com/facebookresearch/fastText). 

A compressed archive of the combined plain text, currently including *3,287* works, is provided [here](https://drive.google.com/file/d/1p_EKA6zb8VtmOI0s7nj1uEMhOTsHT991/view?usp=sharing) [351 MB]
so that you can directly proceed with model training. A pre-trained model can be obtained from [here](https://drive.google.com/file/d/1MbOauFOhLGWud0OV9ACIYqTGTSnHqpD1/view?usp=sharing) [1,43 GB].

### Linux
1. Follow the instructions for [building fastText](https://github.com/facebookresearch/fastText#building-fasttext)

2. Download the [DTA](http://www.deutschestextarchiv.de/) normalized XML files    
``wget -i dta_normalized.txt -P dta_normalized``

3. Transform the [DTA](http://www.deutschestextarchiv.de/) normalized XML files into plain text    
``xsltproc tei2txt.xsl dta_normalized/* -o dta_normalized/*.txt``

4. Concatenate all plain text files into a single text file    
``cp dta_normalized/*.txt dta_normalized/dta_normalized_all.txt``

5. Compute word embeddings using [fastText](https://github.com/facebookresearch/fastText)   
``fasttext skipgram -input dta_normalized/dta_normalized_all.txt -output dta_emb``

### Windows
1. Download ``wget.exe`` from https://eternallybored.org/misc/wget/    

2. Download ``msxsl.exe`` from https://www.microsoft.com/en-us/download/details.aspx?id=21714    

3. Download ``fasttext.exe`` from https://github.com/xiamx/fastText/releases

4. Download the [DTA](http://www.deutschestextarchiv.de/) normalized XML files    
``wget.exe -i dta_normalized.txt -P dta_normalized``

4. Run a batch script to convert the XML files to a combined plain text file    
``dta2txt.bat``

6. Compute word embeddings using [fastText](https://github.com/facebookresearch/fastText)    
``fasttext.exe skipgram -input dta_normalized\dta_normalized_all.txt -output dta_emb``

:: Little batch file to install Python libraries
:: (once they've been downloaded and un-zipped)
::
:: dto 2015 May 29

set path=c:\python27;c:\python27\scripts;%path%

:: pip
cd pip-7.0.1.tar\dist\pip-7.0.1
python setup.py install
cd ..\..\..

:: xlrd
cd xlrd-0.9.3.tar\xlrd-0.9.3
python setup.py install
cd ..\..

:: xlutils
cd xlutils-1.7.1.tar\xlutils-1.7.1
python setup.py install
cd ..\..

:: TDE extract
cd TDE-API-Python-64Bit\DataExtract-8300.15.0308.1149
python setup.py install
cd ..\..

:: numpy
pip install numpy-1.9.2+mkl-cp27-none-win_amd64.whl

:: pandas
pip install pandas-0.16.1-cp27-none-win_amd64.whl

:: xlsxwriter
pip install Xlsxwriter-0.7.3-py2.py3-none-any.whl

::rpy2
pip install rpy2-2.7.0-cp27-none-win_amd64.whl

::pywin32
pip install pywin32-219-cp27-none-win_amd64.whl

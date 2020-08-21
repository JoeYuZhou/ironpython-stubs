set project_path=C:\Projects\QuantConnect\JoeYuZhou\ironpython-stubs
set ironpython_path=E:\Projects\QuantConnect\IronPythonNew\ironpython2\bin\Debug\net45
cd %project_path%
rmdir /q /s release\stubs\QuantConnect
%ironpython_path%\ipy -X:FullFrames -m ironstubs make --all --keep-partial
python -m stubsGenerator --path=%project_path%\release\stubs\QuantConnect --partition



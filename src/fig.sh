dt=`date | sed 's/[^0-9:][^0-9:]*/-/g' | sed 's/- *$//' | sed 's/://g'`
cp ~/Downloads/s.png ~/Downloads/$dt.png

cp common/custom.css .
cp common/custom.css Weekly\ Plan/.

rsync -avz --exclude-from=common/exclude-list.txt --delete *.html blackwidowproxy:public_html/PHYS10792/.

rsync -avz --exclude-from=common/exclude-list.txt --delete *.ipynb blackwidowproxy:public_html/PHYS10792/.

rsync -avz --exclude-from=common/exclude-list.txt --delete images blackwidowproxy:public_html/PHYS10792/.

rsync -avz --exclude-from=common/exclude-list.txt --delete custom.css blackwidowproxy:public_html/PHYS10792/.

rsync -avz --exclude-from=common/exclude-list.txt --delete Weekly\ Plan blackwidowproxy:public_html/PHYS10792/.

for i in {1..12}
do
    cp common/custom.css Chapter\ $i/.

    #rsync -avz --exclude-from=common/exclude-list.txt --delete Chapter\ $i hulkproxy:public_html/PHYS10792/.
    rsync -avz --exclude-from=common/exclude-list.txt --delete Chapter\ $i blackwidowproxy:public_html/PHYS10792/.

    rm Chapter\ $i.zip
    zip -r Chapter\ $i.zip Chapter\ $i -x */.\* \*nosync\* \*Instructor\*

done

rm PHYS10792.zip
zip -r PHYS10792.zip Chapter\ * -x */.\* \*nosync\*

cp common/custom.css .
cp common/custom.css Weekly\ Plan/.

for i in {1..11}
do
    cp common/custom.css Chapter\ $i/.

    rm Chapter\ $i.zip

done

rm PHYS10792.zip

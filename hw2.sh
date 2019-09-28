#Question1 : 
awk 'BEGIN {FS = "," } ; $5 ~ /^Male$/' data.text

#Question 2: 
awk 'BEGIN {FS = "," } ; $2 ~ /^A|K/' data.text

#Question 3 : 
awk 'BEGIN {FS = "," } ; {print $7}' data.text


#Question 4 : 
for i in {1..7}
do
        colname=`ps -ef | grep "port 10 -" | grep -v "grep port 10 -" | awk -v cx=$i 'BEGIN {FS = "," } ; NR==1 {print $cx}' data.text`
        awk -v cx=$i 'BEGIN {FS = ","}; NR >1 {print $cx}' data.text > $colname
done

#Question 5 : 
awk 'BEGIN {FS = "," } ; END{print NR}' data.text

#Question 6 : 
awk 'BEGIN {FS = "," } ; substr($4,length($4)-2,length($4))=="com" {print substr($4,1,length($4)-3)"org"}' data.text

#Question 7: 
awk 'BEGIN {FS = "," } ; {print $1,"("substr($2,1,1)")"substr($2,2),"("$3")" }' data.text


#Question 8 : 
sed -i '10d' data.text

#Question 9 : 
awk 'BEGIN {FS = "," } ; {print "Ln # " NR-1 ":"  $0 }' data.text


#usage: ./find_perfect_matches.sh <query file> <subject file> <output file>
blastn -query $1 -subject $2 -task blastn-short -outfmt '6 std sseq' -out $3

#identifying 100% match, full length match 
awk '$3 == 100 && $4 == 28' $3 | wc -l
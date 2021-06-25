set -e
make clean
make PRINT_SCORES=1

cat ../sequences.txt | ./bench -l 1000 -i - > ../../scores_l1000.tsv
echo "scores_l1000.tsv"

cat ../sequences.txt | ./bench -l 10000 -i - > ../../scores_l10000.tsv
echo "scores_l10000.tsv"

cat ../sequences.txt | ./bench -l 25000 -i - > ../../scores_l25000.tsv
echo "scores_l25000.tsv"

cat ../sequences.txt | ./bench -i - > ../../scores_default.tsv
echo "scores_default.tsv"

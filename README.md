# diff-bench-paper
Edits to the supplementary data of the difference recurrence alignment paper.

The original paper by Hajime Suzuki and Masahiro Kasahara is
[here](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-018-2014-8).

This repo exists because [diffbench](https://github.com/ocxtal/diffbench)
did not contain the exact code for the benchmarks in the paper.
I needed to modify this code to compare against
[block aligner](https://github.com/Daniel-Liu-c0deb0t/block-aligner).
These small modifications are my only contributions to this code. The
initial code and paper are all by Suzuki and Kasahara.

## Getting the data
`sequences.txt` is needed for the benchmarks to run. It is large, so it has to
be manually downloaded:

1. `cd supplementary_data`
2. `curl -OL https://github.com/Daniel-Liu-c0deb0t/diff-bench-paper/releases/download/v1.0/sequences.txt`
3. `cd ..`

## Building and running
1. `cd supplementary_data/benchmark_codes`
2. Check the `Makefile` to make sure it is using the right `gcc` versions.
3. Run `./custom_bench.sh` to benchmark and print results.
4. Run `./custom_scores.sh` to output scores as tab-separated files,
for comparison against block aligner.

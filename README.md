# TZMD
The "tetranucleotide-derived Z-value Manhattan Distance” (TZMD) approach profiles genomic composition with high resolution, which can distinguish bacteria at even strain level. 
 
## Please Cite
If you use TZMD in your publication, please cite:  (coming soon)

## Usage
1. Calculate Normalized Zvalues for query and reference genomes
```
perl NormalizedZvalue.pl [GenomeInfo file] [output]
```
The `[GenomeInfo file]` has 8 tab-separated fields:
```
 Assembly_assession\tspecies_taxid\torganism_name\tinfraspecific_name\tassembly_level\tChromosome size\tfile for Chromosome\tfile for Plasmid
``` 
Note: file for Chromosome,the file containing sequences in FASTA format.
  
2. Calculate TZMDs and TETRAs
```
 perl TZMD.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]
 perl TETRA.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]
```

## Note
All scripts are in `Bin` directory, and all tested data are in `Data` directory.

## Support
If you are having issues, please email me via `zhouyizhuang3@163.com`

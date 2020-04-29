# TZMD v1.0
 The "tranucleotide-derived Z-value Manhattan Distance” (TZMD) approach profiles genomic composition with high resolution, which can distinguish bacteria at even strain level. 
 
 ## Please Cite ##
If you use TZMD in your publication, please cite:

Zhou, Y., Zhang, W., Wu, H. et al. A high-resolution genomic composition-based method with the ability to distinguish similar bacterial organisms. BMC Genomics 20, 754 (2019) doi:10.1186/s12864-019-6119-x

## Usage ##
1. Calculate Normalized Zvalues for query and reference genomes

perl NormalizedZvalue.pl [GenomeInfo file] [output]

[GenomeInfo file] has 8 fields, including:

 Assembly_assession\tspecies_taxid\torganism_name\tinfraspecific_name\tassembly_level\tChromosome size (in bp)\tfile for Chromosome\tfile for Plasmid
 
Note: file for Chromosome,the file containing sequences in fasta format.
  
2. Calculate TZMDs and TETRAs

 perl TZMD.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]
 
 perl TETRA.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]

## Note ##
All scripts are in Bin directory, and all tested data are in Data directory. Besides, an example is placed in Data/Test/.

## Support ##
If you are having issues, please email me via zhouyizhuang3@163.com

# TZMD v1.0
 The "etranucleotide-derived Z-value Manhattan Distance” (TZMD) approach profiles genomic composition with high resolution, which can distinguish bacteria at even strain level. 
 
 ## Please Cite ##
If you use SeedBin in your publication, please cite:

## Usage ##
1. Calculate Normalized Zvalues for query and reference genomes
perl NormalizedZvalue.pl [GenomeInfo file] [output]
[GenomeInfo file] has 8 fields, including:
 Assembly_assession<TAB>species_taxid<TAB>organism_name<TAB>infraspecific_name<TAB>assembly_level<TAB>Chromosome size<TAB>file for Chromosome<TAB>file for Plasmid
Note: TAB,"\t"
  
2. Calculate TZMDs and TETRAs
 perl TZMD.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]
 perl TETRA.pl [Query NormalizedZvalue][Ref NormalizedZvalue][output]

## Support ##
If you are having issues, please email me via zhouyizhuang3@163.com

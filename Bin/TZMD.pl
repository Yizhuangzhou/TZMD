#!/usr/bin/perl
use strict;
use warnings;

die "perl $0 [Query NormalizedZvalue][Ref NormalizedZvalue][output]" unless (@ARGV == 3);
open(IN,$ARGV[0])||die;
open(IF,$ARGV[1])||die;
open(OUT,">$ARGV[2]")||die;
my %hash;
my @name=();
while(<IF>){
	chomp;
	my @a=split /\t/;
	my $id=shift @a;
	push @name,$id;
	$hash{$id}=\@a;
}
close IF;
my $m=255;
print OUT "QueryID\tRefID\tTZMD\n";
while(<IN>){
	chomp;
	my @a=split /\t/;
	my $id=shift @a;
	my @val2=@a;
	for(my $i=0;$i<=$#name;$i++){
		my $id1=$name[$i];
		next if($id eq $id1);
		my @val1=@{$hash{$id1}};
		my $TZMD=0;
		foreach(0 .. $m){
			$TZMD+=abs($val1[$_]-$val2[$_]);
		}
		$TZMD=sprintf("%.2f",$TZMD);
		print OUT "$id\t$id1\t$TZMD\n";
	}
}
close IN;
close OUT;


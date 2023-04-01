#!/bin/bash


#task_1
echo "This script can count the number of sequences in a fasta file."

greeting="hello"
name="Alana"

echo $greeting $name

#task_2
mkdir learning_bash 
cd learning_bash
mkdir bioinformatics

#task_3
#cp transcriptome.fasta /Users/alanahague/BIOS_5970/assignment_2/learning_bash/bioinformatics
#this command assumes that you are in the same folder as transcriptome.fasta

#task_4
seq=$(grep ">" ./learning_bash/bioinformatics/transcriptome.fasta | wc -l)
echo "the number of sequences is" $seq > ./learning_bash/bioinformatics/fasta_count.txt


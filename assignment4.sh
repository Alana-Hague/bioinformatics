#!/bin/bash

# Task 1
makeblastdb -in ./mystery_transcripts.fasta -dbtype nucl, prot -out ./mystery_transcript_data

# Task 2
makeblastdb -in ./mystery_protiens.fasta -dbtype nucl, prot -out ./mystery_transcript_data

# Task 3
blastn -query ./mystery_nucleotide_query.fasta mystery_transcripts.fasta &&
blastn -evalue 1e-3 mystery_transcripts.fasta &&
awk -F':' '{printf "%s%s", $5, (/^Grade/)?"\n":"\t|"}' mystery_transcripts.fasta

# Task 4
blastn -query ./mystery_nucleotide_query.fasta mystery_transcripts.fasta &&
blastn -c -evalue 1e-3 mystery_transcripts.fasta 
T010027234997

# Task 5
awk -c 1200 ./mystery_nucleotide_query.fasta | blastn -query ./mystery_nucleotide_query.fasta mystery_transcripts.fasta > most_similar.txt

# Task 6
blastn -query ./mystery_protien_query.fasta mystery_protiens.fasta &&
blastn -evalue 1e-5 mystery_protiens.fasta &&
awk -F':' '{printf "%s%s", $15, (/^Grade/)?"\n":"\t|"}' mystery_protiens.fasta

# Task 7
blastn -query ./mystery_protien_query.fasta mystery_protiens.fasta &&
echo blastn -c -evalue 1e-5 mystery_protiens.fasta 
P010027090796

# Task 8
Coffea Arabica

# Task 9 
Gardenia Jasmineoides

# Task 10
Putative Catalase



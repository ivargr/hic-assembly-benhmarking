



rule run_bnp_scaffolding:
    input:
        contigs=HifiasmResultsWithExtraSplits.path() + "/hifiasm.hic.p_ctg.fa",
        contigs_index=HifiasmResultsWithExtraSplits.path() + "/hifiasm.hic.p_ctg.fa.fai",
        hic_to_contig_mappings=HifiasmResultsWithExtraSplits.path() + "/hifiasm.hic.p_ctg.sorted_by_read_name.bam",
    output:
        ScaffoldingResults.path(scaffolder="bnp_scaffolding") + "/scaffolds.fa"
    shell:
        """
        
        bnp_assembly scaffold {input.contigs} {input.hic_to_contig_mappings} {output}
        """









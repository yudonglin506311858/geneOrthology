#' Species Table for Orthology Mapping
#'
#' @name species_table
#' @docType data
#' @usage data(species_table)
#' @format data frame
"species_table"

species_table <- data.frame(
  name = c("human","mouse","rat","macaque","chimpanzee","rabbit",
           "dog","cat","pig","cow","sheep","horse","goat","hamster",
           "chicken","turkey","duck","zebrafinch",
           "zebrafish","medaka","fugu","stickleback","salmon",
           "xenopus","fly","mosquito","bee","silkworm",
           "worm","yeast","schizosaccharomyces","aspergillus",
           "arabidopsis","rice","maize","soybean","e_coli"),
  org = c("Homo_sapiens","Mus_musculus","Rattus_norvegicus","Macaca_mulatta","Pan_troglodytes","Oryctolagus_cuniculus",
          "Canis_familiaris","Felis_catus","Sus_scrofa","Bos_taurus","Ovis_aries","Equus_caballus","Capra_hircus","Mesocricetus_auratus",
          "Gallus_gallus","Meleagris_gallopavo","Anas_platyrhynchos","Taeniopygia_guttata",
          "Danio_rerio","Oryzias_latipes","Takifugu_rubripes","Gasterosteus_aculeatus","Salmo_salar",
          "Xenopus_tropicalis","Drosophila_melanogaster","Anopheles_gambiae","Apis_mellifera","Bombyx_mori",
          "Caenorhabditis_elegans","Saccharomyces_cerevisiae","Schizosaccharomyces_pombe","Aspergillus_nidulans",
          "Arabidopsis_thaliana","Oryza_sativa","Zea_mays","Glycine_max","Escherichia_coli"),
  db = c("org.Hs.eg.db","org.Mm.eg.db","org.Rn.eg.db","org.Mmu.eg.db","org.Pt.eg.db","org.Oryctolagus.eg.db",
         "org.Cf.eg.db","org.Fc.eg.db","org.Ss.eg.db","org.Bt.eg.db","org.Oa.eg.db","org.Ecab.eg.db","org.Chi.eg.db","org.Mau.eg.db",
         "org.Gg.eg.db","org.Tg.eg.db","org.Anas.eg.db","org.Taeniopygia.eg.db",
         "org.Dr.eg.db","org.Ol.eg.db","org.Fr.eg.db","org.Gac.eg.db","org.Ssa.eg.db",
         "org.Xt.eg.db","org.Dm.eg.db","org.Ag.eg.db","org.Am.eg.db","org.Bm.eg.db",
         "org.Ce.eg.db","org.Sc.sgd.db","org.Sp.eg.db","org.An.eg.db",
         "org.At.eg.db","org.Os.eg.db","org.Zm.eg.db","org.Gm.eg.db","org.EcK12.eg.db"),
  stringsAsFactors = FALSE
)

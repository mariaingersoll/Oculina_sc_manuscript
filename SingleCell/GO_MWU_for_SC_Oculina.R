


setwd("/projectnb/coral/MVI_Oculina/Oculina_sc_manuscript/SingleCell/files/")

####### LINE 769 of 2024_Final_Oculina_scRNAseq.rmd
#running the apoculata_proteins.fasta through eggnog mapper to get more complete GO terms -> astrangia2024.emapper.iso2go.txt

#CC just to make sure it all works
input="go_input_full2.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="CC"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#231

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)

#BP
input="go_input_full2.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#846 

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#go_input_full_bp as portrait 100x10

#DID NOT USE THIS WAY: doing it with the GO_swiss_prot from the 
#annotations (apoculata_GeneAnnotation_combined.txt) file 
#BP
input="go_input_full2.csv"
goAnnotations="apoculata_swissprot_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#846

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#go_input_full_bp_swiss as portrait 50x10

######### RETURN TO LINE 771 OF MAIN SCRIPT

###### COME HERE FROM LINE 1168 OF MAIN SCRIPT
#BP
input="go_input_gderm1.2.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#316

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#go_gderm1_bp as portrait 50x10

# NOT using this, but could try with the swissprot GO terms
#BP
input="go_input_gderm1.2.csv"
goAnnotations="apoculata_swissprot_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)


results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#go_gderm1_bp_swiss as portrait 20x10 still not great; could highlight what genes 
#are involved in immune processes from the pc feats

####### RETURN TO LINE 1170 OF MAIN SCRIPT

####### START HERE FROM LINE 1427 OF MAIN SCRIPT
#BP
input="go_input_gderm2.2.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#83

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#go_gderm2_bp as portrait 20x15

########## RETURN TO LINE 1429 OF MAIN SCRIPT

########## START HERE FROM LINE 5288 (Fishers orthologs)

## Start with the shared DEGs (only doing BP) from ocsym to xenia and 
#gd1and2 to xenia
# BP
input="ocsym_shared_GO.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#31
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#ocsym_shared_GO_fisherBP 10x8 landscape

input="gd1and2_shared_GO.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#40
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#gd1and2_shared_GO_fisherBP 10x8 landscape

############ GO BACK TO LINE 5288 OF MAIN SCRIPT

############ COME HERE FROM LINE 5346 OF MAIN SCRIPT
input="ocsym_ONLY_GO.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#92
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#ocsym_ONLY_GO_fisherBP 12x10 portrait 
#these could be supp tables mentioned in the text; this might all go in the supps

input="xen_ONLY_GO.csv" #from ocsym
goAnnotations="xenia_emapper_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#26
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#xen_ONLY_GO_fisherBP as landscape 10x6 --> IMMUNE RESPONSE

input="ocsymXEN_shared_GO.csv"
goAnnotations="xenia_emapper_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#22
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#ocsymXEN_shared_GO_fisherBP as landscape 10x6 

############# RETURN TO MAIN SCRIPT LINE 5348

############# COME HERE FROM LINE 5361
input="gd1and2XEN_shared_GO.csv"
goAnnotations="xenia_emapper_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#31
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#gd1and2XEN_shared_GO_fisherBP as landscape 10x8 -->  response to interleukin−4

########### RETURN TO MAIN SCRIPT LINE 5363

########### COME HERE FROM MAIN SCRIPT LINE 5410
input="fj_gd1and2_ONLY_GO.csv"
goAnnotations="astrangia2024.emapper.iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#56
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#fj_gd1and2_ONLY_GO_fisherBP

input="fj_gd_xen_ONLY_GO.csv"
goAnnotations="xenia_emapper_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#4
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#fj_gd_xen_ONLY_GO_fisherBP


######### RETURN TO MAIN SCRIPT LINE 5412





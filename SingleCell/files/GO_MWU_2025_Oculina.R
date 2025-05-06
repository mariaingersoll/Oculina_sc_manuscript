setwd("/projectnb/coral/MVI_Oculina/Oculina_sc_manuscript/SingleCell/files/")

####### LINE 826 of 2025_Oculina_scRNAseq.rmd

#CC just to make sure it all works
input="go_input_full2025.csv"
goAnnotations="jaOcuArbu1.gene2go.txt"

goDatabase="go.obo"
goDivision="CC"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#245

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#GO_CC_2025 as 30x8

#BP
input="go_input_full2025.csv"
goAnnotations="jaOcuArbu1.gene2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#892 

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#GO_BP_2025 as portrait 100x10

#MF REDO!!!!!
input="go_input_full2025.csv"
goAnnotations="jaOcuArbu1.gene2go.txt"
goDatabase="go.obo"
goDivision="MF"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,  
           smallest=5,  
           clusterCutHeight=0.25,
)

#139

results=gomwuPlot(input,goAnnotations,goDivision,
                  absValue=1,
                  level1=0.1, 
                  level2=0.05,
                  level3=0.01,
                  txtsize=1.2,
                  treeHeight=0.5, 
)
#GO_MP_2025 as portrait 15x10

########## START HERE FROM LINE 5699 (Fishers orthologs)
input="gd1234a_shared_GO.csv"
goAnnotations="jaOcuArbu1.gene2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#53
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#gd1234a_shared_GO_fisherBP 10x10 landscape

########## START HERE FROM LINE 5719
input="gd1234aXEN_shared_GO.csv"
goAnnotations="xenia_emapper_iso2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#29
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#gd1234aXEN_shared_GO_fisherBP as landscape 10x8 -->  response to interleukin−4


########## START HERE FROM LINE 5766
input="fj_gd1234a_ONLY_GO.csv"
goAnnotations="jaOcuArbu1.gene2go.txt"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)
#97
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#fj_gd1234a_ONLY_GO_fisherBP

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
#5
resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#fj_gd_xen_ONLY_GO_fisherBP



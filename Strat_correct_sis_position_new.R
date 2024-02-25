#Sep 19, 2023

#Sister species table
getwd()
library(foreach)
#install.packages("phytools")
library(phytools)
library(maps)
library(phangorn)
library(phylotools)
#Read fasta files of placed co1 on the bb tree
R_co1_20_1=read.fasta(file = "CO1_20_1S.fasta")
R_co1_20_2=read.fasta(file = "CO1_20_2S.fasta")
R_co1_20_3=read.fasta(file = "CO1_20_3S.fasta")
R_co1_20_4=read.fasta(file = "CO1_20_4S.fasta")
R_co1_20_5=read.fasta(file = "CO1_20_5S.fasta")
R_co1_20_6=read.fasta(file = "CO1_20_6S.fasta")
R_co1_20_7=read.fasta(file = "CO1_20_7S.fasta")
R_co1_20_8=read.fasta(file = "CO1_20_8S.fasta")
R_co1_20_9=read.fasta(file = "CO1_20_9S.fasta")
R_co1_20_10=read.fasta(file = "CO1_20_10S.fasta")
R_co1_40_1=read.fasta(file = "CO1_40_1S.fasta")
R_co1_40_2=read.fasta(file = "CO1_40_2S.fasta")
R_co1_40_3=read.fasta(file = "CO1_40_3S.fasta")
R_co1_40_4=read.fasta(file = "CO1_40_4S.fasta")
R_co1_40_5=read.fasta(file = "CO1_40_5S.fasta")
R_co1_40_6=read.fasta(file = "CO1_40_6S.fasta")
R_co1_40_7=read.fasta(file = "CO1_40_7S.fasta")
R_co1_40_8=read.fasta(file = "CO1_40_8S.fasta")
R_co1_40_9=read.fasta(file = "CO1_40_9S.fasta")
R_co1_40_10=read.fasta(file = "CO1_40_10S.fasta")
R_co1_60_1=read.fasta(file = "CO1_60_1S.fasta")
R_co1_60_2=read.fasta(file = "CO1_60_2S.fasta")
R_co1_60_3=read.fasta(file = "CO1_60_3S.fasta")
R_co1_60_4=read.fasta(file = "CO1_60_4S.fasta")
R_co1_60_5=read.fasta(file = "CO1_60_5S.fasta")
R_co1_60_6=read.fasta(file = "CO1_60_6S.fasta")
R_co1_60_7=read.fasta(file = "CO1_60_7S.fasta")
R_co1_60_8=read.fasta(file = "CO1_60_8S.fasta")
R_co1_60_9=read.fasta(file = "CO1_60_9S.fasta")
R_co1_60_10=read.fasta(file = "CO1_60_10S.fasta")
R_co1_80_1=read.fasta(file = "CO1_80_1S.fasta")
R_co1_80_2=read.fasta(file = "CO1_80_2S.fasta")
R_co1_80_3=read.fasta(file = "CO1_80_3S.fasta")
R_co1_80_4=read.fasta(file = "CO1_80_4S.fasta")
R_co1_80_5=read.fasta(file = "CO1_80_5S.fasta")
R_co1_80_6=read.fasta(file = "CO1_80_6S.fasta")
R_co1_80_7=read.fasta(file = "CO1_80_7S.fasta")
R_co1_80_8=read.fasta(file = "CO1_80_8S.fasta")
R_co1_80_9=read.fasta(file = "CO1_80_9S.fasta")
R_co1_80_10=read.fasta(file = "CO1_80_10S.fasta")
R_co1_1_1=read.fasta(file = "CO1_99_1S.fasta")
R_co1_1_2=read.fasta(file = "CO1_99_2S.fasta")
R_co1_1_3=read.fasta(file = "CO1_99_3S.fasta")
R_co1_1_4=read.fasta(file = "CO1_99_4S.fasta")
R_co1_1_5=read.fasta(file = "CO1_99_5S.fasta")
R_co1_1_6=read.fasta(file = "CO1_99_6S.fasta")
R_co1_1_7=read.fasta(file = "CO1_99_7S.fasta")
R_co1_1_8=read.fasta(file = "CO1_99_8S.fasta")
R_co1_1_9=read.fasta(file = "CO1_99_9S.fasta")
R_co1_1_10=read.fasta(file = "CO1_99_10S.fasta")

#read the refernce tree
ReferenceTree <- read.tree("RAxML_bestTree.FR100_new")
#Read the 40 trees generated using Random samples
R20_1_tree<-read.tree("20_1_new")
R20_2_tree<-read.tree("20_2_new")
R20_3_tree<-read.tree("20_3_new")
R20_4_tree<-read.tree("20_4_new")
R20_5_tree<-read.tree("20_5_new")
R20_6_tree<-read.tree("20_6_new")
R20_7_tree<-read.tree("20_7_new")
R20_8_tree<-read.tree("20_8_new")
R20_9_tree<-read.tree("20_9_new")
R20_10_tree<-read.tree("20_10_new")
R40_1_tree<-read.tree("40_1_new")
R40_2_tree<-read.tree("40_2_new")
R40_3_tree<-read.tree("40_3_new")
R40_4_tree<-read.tree("40_4_new")
R40_5_tree<-read.tree("40_5_new")
R40_6_tree<-read.tree("40_6_new")
R40_7_tree<-read.tree("40_7_new")
R40_8_tree<-read.tree("40_8_new")
R40_9_tree<-read.tree("40_9_new")
R40_10_tree<-read.tree("40_10_new")
R60_1_tree<-read.tree("60_1_new")
R60_2_tree<-read.tree("60_2_new")
R60_3_tree<-read.tree("60_3_new")
R60_4_tree<-read.tree("60_4_new")
R60_5_tree<-read.tree("60_5_new")
R60_6_tree<-read.tree("60_6_new")
R60_7_tree<-read.tree("60_7_new")
R60_8_tree<-read.tree("60_8_new")
R60_9_tree<-read.tree("60_9_new")
R60_10_tree<-read.tree("60_10_new")
R60_1_tree<-read.tree("60_1_new")
R80_2_tree<-read.tree("80_2_new")
R80_3_tree<-read.tree("80_3_new")
R80_4_tree<-read.tree("80_4_new")
R80_5_tree<-read.tree("80_5_new")
R80_6_tree<-read.tree("80_6_new")
R80_7_tree<-read.tree("80_7_new")
R80_8_tree<-read.tree("80_8_new")
R80_9_tree<-read.tree("80_9_new")
R80_10_tree<-read.tree("80_10_new")
R99_1_tree<-read.tree("99_1_new")
R99_2_tree<-read.tree("99_2_new")
R99_3_tree<-read.tree("99_3_new")
R99_4_tree<-read.tree("99_4_new")
R99_5_tree<-read.tree("99_5_new")
R99_6_tree<-read.tree("99_6_new")
R99_7_tree<-read.tree("99_7_new")
R99_8_tree<-read.tree("99_8_new")
R99_9_tree<-read.tree("99_9_new")
R99_10_tree<-read.tree("99_10_new")

#------
R_co1_20_1_species <- R_co1_20_1$seq.name
R_co1_20_2_species <- R_co1_20_2$seq.name
R_co1_20_3_species <- R_co1_20_3$seq.name
R_co1_20_4_species <- R_co1_20_4$seq.name
R_co1_20_5_species <- R_co1_20_5$seq.name
R_co1_20_6_species <- R_co1_20_6$seq.name
R_co1_20_7_species <- R_co1_20_7$seq.name
R_co1_20_8_species <- R_co1_20_8$seq.name
R_co1_20_9_species <- R_co1_20_9$seq.name
R_co1_20_10_species <- R_co1_20_10$seq.name
R_co1_40_1_species <- R_co1_40_1$seq.name
R_co1_40_2_species <- R_co1_40_2$seq.name
R_co1_40_3_species <- R_co1_40_3$seq.name
R_co1_40_4_species <- R_co1_40_4$seq.name
R_co1_40_5_species <- R_co1_40_5$seq.name
R_co1_40_6_species <- R_co1_40_6$seq.name
R_co1_40_7_species <- R_co1_40_7$seq.name
R_co1_40_8_species <- R_co1_40_8$seq.name
R_co1_40_9_species <- R_co1_40_9$seq.name
R_co1_40_10_species <- R_co1_40_10$seq.name
R_co1_60_1_species <- R_co1_60_1$seq.name
R_co1_60_2_species <- R_co1_60_2$seq.name
R_co1_60_3_species <- R_co1_60_3$seq.name
R_co1_60_4_species <- R_co1_60_4$seq.name
R_co1_60_5_species <- R_co1_60_5$seq.name
R_co1_60_6_species <- R_co1_60_6$seq.name
R_co1_60_7_species <- R_co1_60_7$seq.name
R_co1_60_8_species <- R_co1_60_8$seq.name
R_co1_60_9_species <- R_co1_60_9$seq.name
R_co1_60_10_species <- R_co1_60_10$seq.name
R_co1_80_1_species <- R_co1_80_1$seq.name
R_co1_80_2_species <- R_co1_80_2$seq.name
R_co1_80_3_species <- R_co1_80_3$seq.name
R_co1_80_4_species <- R_co1_80_4$seq.name
R_co1_80_5_species <- R_co1_80_5$seq.name
R_co1_80_6_species <- R_co1_80_6$seq.name
R_co1_80_7_species <- R_co1_80_7$seq.name
R_co1_80_8_species <- R_co1_80_8$seq.name
R_co1_80_9_species <- R_co1_80_9$seq.name
R_co1_80_10_species <- R_co1_80_10$seq.name
R_co1_1_1_species <- R_co1_1_1$seq.name
R_co1_1_2_species <- R_co1_1_2$seq.name
R_co1_1_3_species <- R_co1_1_3$seq.name
R_co1_1_4_species <- R_co1_1_4$seq.name
R_co1_1_5_species <- R_co1_1_5$seq.name
R_co1_1_6_species <- R_co1_1_6$seq.name
R_co1_1_7_species <- R_co1_1_7$seq.name
R_co1_1_8_species <- R_co1_1_8$seq.name
R_co1_1_9_species <- R_co1_1_9$seq.name
R_co1_1_10_species <- R_co1_1_10$seq.name
##bb 80% tree when placed 20% co1
library(ips)
#sister(tree, "t4", type = "terminal", label = T)
RefTree_R_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(ReferenceTree,R_co1_20_1_species[i],type="terminal",label=T)
R_80_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(R80_1_tree,R_co1_20_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List )] #508
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [!(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List)] #320

RefTree_R_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% sister(ReferenceTree,R_co1_20_2_species[i],type="terminal",label=T)
R_80_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% sister(R80_2_tree,R_co1_20_2_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List )] #483
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [!(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List)] #345

RefTree_R_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% sister(ReferenceTree,R_co1_20_3_species[i],type="terminal",label=T)
R_80_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% sister(R80_3_tree,R_co1_20_3_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List )] #518
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [!(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List)] #310

RefTree_R_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% sister(ReferenceTree,R_co1_20_4_species[i],type="terminal",label=T)
R_80_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% sister(R80_4_tree,R_co1_20_4_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List )] #503
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [!(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List)] #325

RefTree_R_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% sister(ReferenceTree,R_co1_20_5_species[i],type="terminal",label=T)
R_80_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% sister(R80_5_tree,R_co1_20_5_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List )] #498
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [!(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List)] #330

RefTree_R_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% sister(ReferenceTree,R_co1_20_6_species[i],type="terminal",label=T)
R_80_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% sister(R80_6_tree,R_co1_20_6_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List )] #468
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [!(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List)] #360

RefTree_R_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% sister(ReferenceTree,R_co1_20_7_species[i],type="terminal",label=T)
R_80_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% sister(R80_7_tree,R_co1_20_7_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List )] #517
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [!(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List)] #311

RefTree_R_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% sister(ReferenceTree,R_co1_20_8_species[i],type="terminal",label=T)
R_80_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% sister(R80_8_tree,R_co1_20_8_species[i],type="terminal",label=T)



#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List )] #494
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [!(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List)] #334

RefTree_R_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% sister(ReferenceTree,R_co1_20_9_species[i],type="terminal",label=T)
R_80_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% sister(R80_9_tree,R_co1_20_9_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List )] #509
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [!(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List)] #319

RefTree_R_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% sister(ReferenceTree,R_co1_20_10_species[i],type="terminal",label=T)
R_80_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% sister(R80_10_tree,R_co1_20_10_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List )] #512
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [!(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List)] #316

#bb 60% tree when placed 40% co1

RefTree_R_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% sister(ReferenceTree,R_co1_40_1_species[i],type="terminal",label=T)
R_60_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% sister(R60_1_tree,R_co1_40_1_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #627
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [!(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #1181

RefTree_R_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% sister(ReferenceTree,R_co1_40_2_species[i],type="terminal",label=T)
R_60_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% sister(R60_2_tree,R_co1_40_2_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #798
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [!(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #863

RefTree_R_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% sister(ReferenceTree,R_co1_40_3_species[i],type="terminal",label=T)
R_60_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% sister(R60_3_tree,R_co1_40_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #801
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [!(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #860

RefTree_R_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% sister(ReferenceTree,R_co1_40_4_species[i],type="terminal",label=T)
R_60_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% sister(R60_4_tree,R_co1_40_4_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #755
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [!(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #906

RefTree_R_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% sister(ReferenceTree,R_co1_40_5_species[i],type="terminal",label=T)
R_60_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% sister(R60_5_tree,R_co1_40_5_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #819
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [!(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #842

RefTree_R_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% sister(ReferenceTree,R_co1_40_6_species[i],type="terminal",label=T)
R_60_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% sister(R60_6_tree,R_co1_40_6_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #788
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [!(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #873

RefTree_R_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% sister(ReferenceTree,R_co1_40_7_species[i],type="terminal",label=T)
R_60_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% sister(R60_7_tree,R_co1_40_7_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #824
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [!(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #837

RefTree_R_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% sister(ReferenceTree,R_co1_40_8_species[i],type="terminal",label=T)
R_60_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% sister(R60_8_tree,R_co1_40_8_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #777
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [!(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #884

RefTree_R_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% sister(ReferenceTree,R_co1_40_9_species[i],type="terminal",label=T)
R_60_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% sister(R60_9_tree,R_co1_40_9_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #810
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [!(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #851

RefTree_R_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% sister(ReferenceTree,R_co1_40_10_species[i],type="terminal",label=T)
R_60_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% sister(R60_10_tree,R_co1_40_10_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #784
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [!(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #877

#RefTree_biasco1List[sapply(names(RefTree_biasco1List), function(x) !identical(RefTree_biasco1List[[x]], biasco1List[[x]]))] 

#bb 40% tree when placed 60% co1

RefTree_R_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% sister(ReferenceTree,R_co1_60_1_species[i],type="terminal",label=T)
R_40_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% sister(R40_1_tree,R_co1_60_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #790
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [!(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #1681

RefTree_R_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% sister(ReferenceTree,R_co1_60_2_species[i],type="terminal",label=T)
R_40_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% sister(R40_2_tree,R_co1_60_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #811
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [!(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #1660


RefTree_R_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% sister(ReferenceTree,R_co1_60_3_species[i],type="terminal",label=T)
R_40_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% sister(R40_3_tree,R_co1_60_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #837
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [!(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #1634

RefTree_R_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% sister(ReferenceTree,R_co1_60_4_species[i],type="terminal",label=T)
R_40_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% sister(R40_4_tree,R_co1_60_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #809
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [!(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #1662

RefTree_R_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% sister(ReferenceTree,R_co1_60_5_species[i],type="terminal",label=T)
R_40_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% sister(R40_5_tree,R_co1_60_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #828
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [!(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #1643

RefTree_R_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% sister(ReferenceTree,R_co1_60_6_species[i],type="terminal",label=T)
R_40_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% sister(R40_6_tree,R_co1_60_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #785
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [!(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #1686

RefTree_R_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% sister(ReferenceTree,R_co1_60_7_species[i],type="terminal",label=T)
R_40_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% sister(R40_7_tree,R_co1_60_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #822
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [!(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #1649

RefTree_R_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% sister(ReferenceTree,R_co1_60_8_species[i],type="terminal",label=T)
R_40_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% sister(R40_8_tree,R_co1_60_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #816
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [!(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #1655

RefTree_R_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% sister(ReferenceTree,R_co1_60_9_species[i],type="terminal",label=T)
R_40_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% sister(R40_9_tree,R_co1_60_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #864
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [!(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #1607

RefTree_R_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% sister(ReferenceTree,R_co1_60_10_species[i],type="terminal",label=T)
R_40_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% sister(R40_10_tree,R_co1_60_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #795
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [!(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #1676


#bb 20% tree when placed 80% co1

RefTree_R_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% sister(ReferenceTree,R_co1_80_1_species[i],type="terminal",label=T)
R_20_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% sister(R20_1_tree,R_co1_80_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #471
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [!(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #2814

RefTree_R_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% sister(ReferenceTree,R_co1_80_2_species[i],type="terminal",label=T)
R_20_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% sister(R20_2_tree,R_co1_80_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #469
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [!(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #2816

RefTree_R_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% sister(ReferenceTree,R_co1_80_3_species[i],type="terminal",label=T)
R_20_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% sister(R20_3_tree,R_co1_80_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #455
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [!(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #2830

RefTree_R_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% sister(ReferenceTree,R_co1_80_4_species[i],type="terminal",label=T)
R_20_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% sister(R20_4_tree,R_co1_80_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #461
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [!(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #2824

RefTree_R_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% sister(ReferenceTree,R_co1_80_5_species[i],type="terminal",label=T)
R_20_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% sister(R20_5_tree,R_co1_80_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #470
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [!(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #2815

RefTree_R_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% sister(ReferenceTree,R_co1_80_6_species[i],type="terminal",label=T)
R_20_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% sister(R20_6_tree,R_co1_80_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #474
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [!(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #2811

RefTree_R_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% sister(ReferenceTree,R_co1_80_7_species[i],type="terminal",label=T)
R_20_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% sister(R20_7_tree,R_co1_80_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #464
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [!(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #2821

RefTree_R_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% sister(ReferenceTree,R_co1_80_8_species[i],type="terminal",label=T)
R_20_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% sister(R20_8_tree,R_co1_80_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #440
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [!(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #2845

RefTree_R_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% sister(ReferenceTree,R_co1_80_9_species[i],type="terminal",label=T)
R_20_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% sister(R20_9_tree,R_co1_80_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #487
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [!(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #2798

RefTree_R_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% sister(ReferenceTree,R_co1_80_10_species[i],type="terminal",label=T)
R_20_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% sister(R20_10_tree,R_co1_80_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #458
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [!(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #2827
#---------------------


#bb 99% tree when placed 1% co1
RefTree_R_co1_1_1_List <- foreach(i=1:length(R_co1_1_1_species)) %do% sister(ReferenceTree,R_co1_1_1_species[i],type="terminal",label=T)
R_99_co1_1_1_List <- foreach(i=1:length(R_co1_1_1_species)) %do% sister(R99_1_tree,R_co1_1_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_1_List [(RefTree_R_co1_1_1_List %in% R_99_co1_1_1_List )] #23
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_1_List [!(RefTree_R_co1_1_1_List %in% R_99_co1_1_1_List)] #4

RefTree_R_co1_1_2_List <- foreach(i=1:length(R_co1_1_2_species)) %do% sister(ReferenceTree,R_co1_1_2_species[i],type="terminal",label=T)
R_99_co1_1_2_List <- foreach(i=1:length(R_co1_1_2_species)) %do% sister(R99_2_tree,R_co1_1_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_2_List [(RefTree_R_co1_1_2_List %in% R_99_co1_1_2_List )] #18
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_2_List [!(RefTree_R_co1_1_2_List %in% R_99_co1_1_2_List)] #9

RefTree_R_co1_1_3_List <- foreach(i=1:length(R_co1_1_3_species)) %do% sister(ReferenceTree,R_co1_1_3_species[i],type="terminal",label=T)
R_99_co1_1_3_List <- foreach(i=1:length(R_co1_1_3_species)) %do% sister(R99_3_tree,R_co1_1_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_3_List [(RefTree_R_co1_1_3_List %in% R_99_co1_1_3_List )] #17
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_3_List [!(RefTree_R_co1_1_3_List %in% R_99_co1_1_3_List)] #10

RefTree_R_co1_1_4_List <- foreach(i=1:length(R_co1_1_4_species)) %do% sister(ReferenceTree,R_co1_1_4_species[i],type="terminal",label=T)
R_99_co1_1_4_List <- foreach(i=1:length(R_co1_1_4_species)) %do% sister(R99_4_tree,R_co1_1_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_4_List [(RefTree_R_co1_1_4_List %in% R_99_co1_1_4_List )] #19
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_4_List [!(RefTree_R_co1_1_4_List %in% R_99_co1_1_4_List)] #8

RefTree_R_co1_1_5_List <- foreach(i=1:length(R_co1_1_5_species)) %do% sister(ReferenceTree,R_co1_1_5_species[i],type="terminal",label=T)
R_99_co1_1_5_List <- foreach(i=1:length(R_co1_1_5_species)) %do% sister(R99_5_tree,R_co1_1_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_5_List [(RefTree_R_co1_1_5_List %in% R_99_co1_1_5_List )] #20
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_5_List [!(RefTree_R_co1_1_5_List %in% R_99_co1_1_5_List)] #7

RefTree_R_co1_1_6_List <- foreach(i=1:length(R_co1_1_6_species)) %do% sister(ReferenceTree,R_co1_1_6_species[i],type="terminal",label=T)
R_99_co1_1_6_List <- foreach(i=1:length(R_co1_1_6_species)) %do% sister(R99_6_tree,R_co1_1_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_6_List [(RefTree_R_co1_1_6_List %in% R_99_co1_1_6_List )] #22
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_6_List [!(RefTree_R_co1_1_6_List %in% R_99_co1_1_6_List)] #5

RefTree_R_co1_1_7_List <- foreach(i=1:length(R_co1_1_7_species)) %do% sister(ReferenceTree,R_co1_1_7_species[i],type="terminal",label=T)
R_99_co1_1_7_List <- foreach(i=1:length(R_co1_1_7_species)) %do% sister(R99_7_tree,R_co1_1_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_7_List [(RefTree_R_co1_1_7_List %in% R_99_co1_1_7_List )] #22
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_7_List [!(RefTree_R_co1_1_7_List %in% R_99_co1_1_7_List)] #5

RefTree_R_co1_1_8_List <- foreach(i=1:length(R_co1_1_8_species)) %do% sister(ReferenceTree,R_co1_1_8_species[i],type="terminal",label=T)
R_99_co1_1_8_List <- foreach(i=1:length(R_co1_1_8_species)) %do% sister(R99_8_tree,R_co1_1_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_8_List [(RefTree_R_co1_1_8_List %in% R_99_co1_1_8_List )] #17
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_8_List [!(RefTree_R_co1_1_8_List %in% R_99_co1_1_8_List)] #10

RefTree_R_co1_1_9_List <- foreach(i=1:length(R_co1_1_9_species)) %do% sister(ReferenceTree,R_co1_1_9_species[i],type="terminal",label=T)
R_99_co1_1_9_List <- foreach(i=1:length(R_co1_1_9_species)) %do% sister(R99_9_tree,R_co1_1_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_9_List [(RefTree_R_co1_1_9_List %in% R_99_co1_1_9_List )] #18
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_9_List [!(RefTree_R_co1_1_9_List %in% R_99_co1_1_9_List)] #9


RefTree_R_co1_1_10_List <- foreach(i=1:length(R_co1_1_10_species)) %do% sister(ReferenceTree,R_co1_1_10_species[i],type="terminal",label=T)
R_99_co1_1_10_List <- foreach(i=1:length(R_co1_1_10_species)) %do% sister(R99_10_tree,R_co1_1_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_10_List [(RefTree_R_co1_1_10_List %in% R_99_co1_1_10_List )] #20
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_10_List [!(RefTree_R_co1_1_10_List %in% R_99_co1_1_10_List)] #7


getSisters(ReferenceTree,R99_6_tree)
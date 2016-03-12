# gather all datasets
emp<-read.csv("empl_status_ACS14_5Yr/ACS_14_5YR_S2301.csv",header=TRUE)
colnames(emp)[1] <- "id"
colnames(emp)[2] <- "zip"
colnames(emp)

# subset by columns
emp_age<-emp[,c("id","zip","GEO.display.label","HC01_EST_VC01",
                "HC01_MOE_VC01","HC02_EST_VC01","HC02_MOE_VC01","HC03_EST_VC01",  
                "HC03_MOE_VC01" ,    "HC04_EST_VC01"   ,  "HC04_MOE_VC01"  ,   "HC01_EST_VC03"  ,  
                "HC01_MOE_VC03"  ,   "HC02_EST_VC03",     "HC02_MOE_VC03" ,    "HC03_EST_VC03",    
                "HC03_MOE_VC03",     "HC04_EST_VC03",     "HC04_MOE_VC03",     "HC01_EST_VC04",    
                "HC01_MOE_VC04" ,    "HC02_EST_VC04"  ,   "HC02_MOE_VC04" ,    "HC03_EST_VC04" ,   
                "HC03_MOE_VC04"  ,   "HC04_EST_VC04"  ,   "HC04_MOE_VC04" ,    "HC01_EST_VC05" ,   
                "HC01_MOE_VC05" ,    "HC02_EST_VC05"  ,   "HC02_MOE_VC05"  ,   "HC03_EST_VC05"  ,  
                "HC03_MOE_VC05" ,    "HC04_EST_VC05"  ,   "HC04_MOE_VC05"  ,   "HC01_EST_VC06" ,   
                "HC01_MOE_VC06" ,    "HC02_EST_VC06"  ,   "HC02_MOE_VC06" ,    "HC03_EST_VC06"  ,  
                "HC03_MOE_VC06" ,    "HC04_EST_VC06" ,    "HC04_MOE_VC06" ,    "HC01_EST_VC07"  ,  
                "HC01_MOE_VC07" ,    "HC02_EST_VC07" ,    "HC02_MOE_VC07",    "HC03_EST_VC07" ,   
                "HC03_MOE_VC07"  ,   "HC04_EST_VC07" ,    "HC04_MOE_VC07"  ,   "HC01_EST_VC08" ,   
                "HC01_MOE_VC08" ,    "HC02_EST_VC08"  ,   "HC02_MOE_VC08" ,    "HC03_EST_VC08",    
                "HC03_MOE_VC08" ,    "HC04_EST_VC08"  ,   "HC04_MOE_VC08" ,    "HC01_EST_VC09",    
                "HC01_MOE_VC09"  ,   "HC02_EST_VC09" ,    "HC02_MOE_VC09" ,    "HC03_EST_VC09" ,   
                "HC03_MOE_VC09"  ,   "HC04_EST_VC09",     "HC04_MOE_VC09"  )]


emp_race<-emp[,c("HC01_EST_VC12" ,  
                 "HC01_MOE_VC12" ,   "HC02_EST_VC12"  ,    "HC02_MOE_VC12" ,    "HC03_EST_VC12" ,  
                 "HC03_MOE_VC12" ,   "HC04_EST_VC12"  ,    "HC04_MOE_VC12" ,    "HC01_EST_VC13" ,   
                 "HC01_MOE_VC13" ,    "HC02_EST_VC13" ,    "HC02_MOE_VC13" ,   "HC03_EST_VC13"  ,   
                 "HC03_MOE_VC13" ,    "HC04_EST_VC13" ,    "HC04_MOE_VC13" ,    "HC01_EST_VC14" ,  
                 "HC01_MOE_VC14" ,    "HC02_EST_VC14" ,    "HC02_MOE_VC14" ,    "HC03_EST_VC14" ,  
                 "HC03_MOE_VC14" ,    "HC04_EST_VC14" ,    "HC04_MOE_VC14" ,    "HC01_EST_VC15" ,   
                 "HC01_MOE_VC15" ,    "HC02_EST_VC15" ,    "HC02_MOE_VC15" ,     "HC03_EST_VC15",   
                 "HC03_MOE_VC15" ,    "HC04_EST_VC15" ,    "HC04_MOE_VC15" ,    "HC01_EST_VC16" ,   
                 "HC01_MOE_VC16" ,    "HC02_EST_VC16" ,    "HC02_MOE_VC16" ,    "HC03_EST_VC16" ,   
                 "HC03_MOE_VC16" ,    "HC04_EST_VC16" ,    "HC04_MOE_VC16" ,    "HC01_EST_VC17" ,   
                 "HC01_MOE_VC17" ,    "HC02_EST_VC17" ,    "HC02_MOE_VC17" ,    "HC03_EST_VC17" ,   
                 "HC03_MOE_VC17" ,    "HC04_EST_VC17" ,    "HC04_MOE_VC17" ,    "HC01_EST_VC18" ,   
                 "HC01_MOE_VC18" ,    "HC02_EST_VC18" ,    "HC02_MOE_VC18" ,    "HC03_EST_VC18" ,   
                 "HC03_MOE_VC18" ,    "HC04_EST_VC18" ,    "HC04_MOE_VC18" ,    "HC01_EST_VC19" ,   
                 "HC01_MOE_VC19" ,    "HC02_EST_VC19" ,    "HC02_MOE_VC19" ,    "HC03_EST_VC19" ,   
                 "HC03_MOE_VC19" ,    "HC04_EST_VC19" ,    "HC04_MOE_VC19")]


emp_edu<-emp[,c( "HC01_EST_VC37" ,   
                 "HC01_MOE_VC37" ,    "HC02_EST_VC37",     "HC02_MOE_VC37",     "HC03_EST_VC37",    
                 "HC03_MOE_VC37" ,    "HC04_EST_VC37",     "HC04_MOE_VC37",     "HC01_EST_VC38",    
                 "HC01_MOE_VC38" ,    "HC02_EST_VC38",     "HC02_MOE_VC38",     "HC03_EST_VC38",    
                 "HC03_MOE_VC38",     "HC04_EST_VC38",     "HC04_MOE_VC38",     "HC01_EST_VC39",    
                 "HC01_MOE_VC39",     "HC02_EST_VC39",     "HC02_MOE_VC39",     "HC03_EST_VC39",    
                 "HC03_MOE_VC39",     "HC04_EST_VC39",     "HC04_MOE_VC39",     "HC01_EST_VC40",    
                 "HC01_MOE_VC40",     "HC02_EST_VC40",     "HC02_MOE_VC40",     "HC03_EST_VC40",    
                 "HC03_MOE_VC40",     "HC04_EST_VC40",     "HC04_MOE_VC40",     "HC01_EST_VC41",    
                 "HC01_MOE_VC41",     "HC02_EST_VC41",     "HC02_MOE_VC41",     "HC03_EST_VC41",    
                 "HC03_MOE_VC41",     "HC04_EST_VC41",     "HC04_MOE_VC41")]


write.csv(emp_age, file = "emp_age.csv")
write.csv(emp_race, file = "emp_race.csv")
write.csv(emp_edu, file = "emp_edu.csv")



zbp<-read.csv("zbp13totals_nyc.txt",header=TRUE,sep=",")





# for PUMA data
pums<-read.csv("ss14hny.csv",header=TRUE)


# select only nyc data
v <- c('3701','3702','3703','3704','3705','3706','3707','3708','3709','3710',
       '3801','3802','3803','3804','3805','3806','3807','3808','3809','3810',
       '3901','3902','3903',
       '4001','4002','4003','4004','4005','4006','4007','4008','4009','4010',
       '4011','4012','4013','4014','4015','4016','4017','4018',
       '4101','4102','4103','4104','4105','4106','4107','4108','4109','4110',
       '4111','4112','4113','4114')
pumsNYC<-subset(pums, (PUMA %in% v)==TRUE)
colnames(pums)

# create Y-axis column for internet yes/no
pums$Y <- 0

test <-pums[,c("Y")]

### there is certain thing as internet allocation flag/ mobile broadband allocation flag.
### what's this?
if((pums$ACCESS==1) || (pums$ACCESS==2) || (pums$BROADBND==1) || (pums$DSL==1) ||
   (pums$FIBEROP==1) || (pums$MODEM==1) || (pums$OTHSVCEX==1) || (pums$SATELLITE==1) ){
  pums$Y=1
} else{
  pums$Y=0
}


# select useful columns, NOT FINISHED
pums_filter <- pums[,c("PUMA","ACCESS","BROADBND","DIALUP","DSL","FIBEROP","MODEM",
                "COMPOTHX","HANDHELD","HFL","INSP","LAPTOP","BDSP","BLD",
                "CONP","MHP","ELEP","FS","FULP","GASP","HANDHELD","HFL",
                "INSP","LAPTOP","MHP","MRGI","MRGP","MRGT","MRGX","REFR","RMSP",
                "RNTM","RNTP","RWAT","RWATPR","SMP","TEL","TEN","VALP","VEH","WATP",
                "YBL","FES","FINCP","FPARC","GRNTP","GRPIP","HHL","HHT","HINCP",
                "HOTWAT","HUGCL","HUPAC","HUPARC","KIT","LNGI","MULTG","MV",
                "OCPIP","SMOCP","SRNT","TAXP","WIF","WKEXREL","WORKSTAT","FACCESSP","Y")]

# to csv file for nyc_pums
write.csv(pums_filter, file = "pumsNYC_filter.csv")





1<-read.csv("map/DC10CT_C36005_CT2MS.txt",header=TRUE, sep=';')
2<-read.csv("map/DC10CT_C36005_CT2MS.txt",header=TRUE, sep=';')







setwd("/home/eric/Dropbox/data/elecs/MXelsCalendGovt/reelec/coa2017/prep")


# ayuntamientos
tmp <- readLines("COAH_AYUN_2017.csv") # all lines, including ine's comments
tmp <- tmp[-1:-5]                      # drop comments
ay <- read.csv(textConnection(tmp), stringsAsFactors=FALSE)

# change PANAL's label (NA)
colnames(ay)[which(colnames(ay)=="NA.")] <- "PANAL"

# remove text, replace with zeroes
sel <- c("PAN", "PRI", "PRD", "PT", "PVEM", "MC", "PANAL", "MORENA", "ES", "UDC", "SI", "PPC", "PJ", "PRC", "PCP", "C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "CAND_IND_1", "CAND_IND_2", "CAND_IND_3", "NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
sel <- which(colnames(ay) %in% sel)
tmp <- ay[,sel]
for (i in 1:ncol(tmp)){
    tmp[,i] <- as.numeric(tmp[,i])
    }
tmp[is.na(tmp)] <- 0
ay[,sel] <- tmp

# aggregate municipal votes
ayMu <- data.frame()
for (i in 1:max(ay$ID_MUNICIPIO_LOCAL)){
    sel <- which(ay$ID_MUNICIPIO_LOCAL==i)
    tmp <- ay[sel,]
    tmp$mun <- tmp$MUNICIPIO_LOCAL[1]
    tmp$munn <- tmp$ID_MUNICIPIO_LOCAL[1]
    tmp1 <- tmp[1,]
    sel <- c("PAN", "PRI", "PRD", "PT", "PVEM", "MC", "PANAL", "MORENA", "ES", "UDC", "SI", "PPC", "PJ", "PRC", "PCP", "C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "CAND_IND_1", "CAND_IND_2", "CAND_IND_3", "NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
    sel <- which(colnames(tmp) %in% sel)
    tmp1[1,sel] <- colSums(tmp[,sel])
    ayMu <- rbind(ayMu, tmp1)
}
# clean columns
sel <- c("ord", "ESTADO", "ID_MUNICIPIO_LOCAL", "MUNICIPIO_LOCAL", "SECCION", "ID_CASILLA", "TIPO_CASILLA", "EXT_CONTIGUA", "UBICACION_CASILLA", "TIPO_ACTA", "NUM_BOLETAS_SOBRANTES", "TOTAL_CIUDADANOS_VOTARON", "NUM_BOLETAS_EXTRAIDAS", "OBSERVACIONES", "CONTABILIZADA", "CRYT", "SHA", "FECHA_HORA_ACOPIO", "FECHA_HORA_CAPTURA", "FECHA_HORA_REGISTRO")
sel <- which(colnames(ayMu) %in% sel)
ayMu <- ayMu[,-sel]

# aggregate coalitions
sel <- c("C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES")
sel <- which(colnames(ayMu) %in% sel)
tmp <- ayMu[,sel]
ayMu$C_PAN <- rowSums(tmp)
# will assume that no votes above implies no coalition and that coalition same in every municipality with one (probably wrong, but should affect little if most votes for PAN)
sel <- which(ayMu$C_PAN!=0)
ayMu$C_PAN[sel] <- ayMu$C_PAN[sel] + ayMu$PAN[sel] + ayMu$ES[sel] + ayMu$UDC[sel] + ayMu$PPC[sel]
ayMu$PAN[sel] <- ayMu$ES[sel] <- ayMu$UDC[sel] <- ayMu$PPC[sel] <- 0
sel <- c("C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES")
sel <- which(colnames(ayMu) %in% sel)
ayMu <- ayMu[,-sel] # drop redundant columns
#
# pri
sel <- c("C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP")
sel <- which(colnames(ayMu) %in% sel)
tmp <- ayMu[,sel]
ayMu$C_PRI <- rowSums(tmp)
# will assume that no votes above implies no coalition and that coalition same in every municipality with one (probably wrong, but should affect little if most votes for PAN)
sel <- which(ayMu$C_PRI!=0)
ayMu$C_PRI[sel] <- ayMu$PRI[sel] + ayMu$PVEM[sel] + ayMu$PANAL[sel] + ayMu$SI[sel] + ayMu$PJ[sel] + ayMu$PRC[sel] + ayMu$PCP[sel] 
ayMu$PRI[sel] <- ayMu$PVEM[sel] <- ayMu$PANAL[sel] <- ayMu$SI[sel] <- ayMu$PJ[sel] <- ayMu$PRC[sel] <- ayMu$PCP[sel] <- 0
sel <- c("C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP")
sel <- which(colnames(ayMu) %in% sel)
ayMu <- ayMu[,-sel] # drop redundant columns
sel <- c("NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
sel <- which(colnames(ayMu) %in% sel)
ayMu <- ayMu[,-sel] # drop more columns

# winner, shares
sel <- c("PAN","PRI","PRD","PT", "PVEM","MC","PANAL","MORENA", "ES","UDC","SI","PPC", "PJ","PRC","PCP","C_PAN", "C_PRI","CAND_IND_1","CAND_IND_2","CAND_IND_3")
sel <- which(colnames(ayMu) %in% sel)
tmp <- ayMu[,sel]
ayMu$efec <- rowSums(tmp)
# shares
for (i in 1: ncol(tmp)){
    tmp[,i] <- round(tmp[,i]/ayMu$efec, 3)
    }
ayMu[,sel] <- tmp
#
# handy function to sort one data frame by order of another, matching data frame
sortBy <- function(target, By){
    t <- target; b <- By;
    do.call(rbind, lapply(seq_len(nrow(b)), 
            function(i) as.character(unlist(t[i,])[order(unlist(-b[i,]))]))) # change to -b if decreasing wished
}
## # example
## v <- data.frame(c1=c(30,15,3), c2=c(10,25,2), c3=c(20,35,4))
## w <- data.frame(c1=c("thirty","fifteen","three"), c2=c("ten","twenty-five","two"), c3=c("twenty","thirty-five","four"))
## v.sorted <- t(apply(v, 1, function(x) sort(x, decreasing = TRUE))) # sort each row of df -- http://stackoverflow.com/questions/6063881/sorting-rows-alphabetically
## w.sorted <- sortBy(target = w, By = v)
## sortBy(target = v, By = v)
#
## this sorts matrix rows faster than function above
# vot <- t(apply(vot, 1, function(x) sort(x, decreasing = TRUE)))
tmp1 <- tmp
tmp1[,1] <- "pan"
tmp1[,2] <- "pri"
tmp1[,3] <- "prd"
tmp1[,4] <- "pt"
tmp1[,5] <- "pvem"
tmp1[,6] <- "mc"
tmp1[,7] <- "panal"
tmp1[,8] <- "morena"
tmp1[,9] <- "pes"
tmp1[,10] <- "udc"
tmp1[,11] <- "sdi"
tmp1[,12] <- "ppc"
tmp1[,13] <- "pj"
tmp1[,14] <- "prc"
tmp1[,15] <- "pcp"
tmp1[,16] <- "panc"
tmp1[,17] <- "pric"
tmp1[,18] <- "ind"
tmp1[,19] <- "ind"
tmp1[,20] <- "ind"
#
ayMu$win <- sortBy(target = tmp1, By = tmp)[,1]
tmp <- sortBy(target = tmp, By = tmp)
ayMu$mg <- as.numeric(tmp[,1]) - as.numeric(tmp[,2])

colnames(ayMu)

# keep only municipios 25 and 33
sel <- which(ayMu$munn==25 | ayMu$munn==33)
ayMu <- ayMu[sel,]

data.frame(ayMu$mun, ayMu$win, ayMu$mg, ayMu$c_PRI, ayMu$C_PAN)
ayMu[25,]

colnames(ayMu)

ayMu$dwin





# diploc
tmp <- readLines("COAH_DIP_LOC_2017.csv") # all lines, including ine's comments
tmp <- tmp[-1:-5]                      # drop comments
dl <- read.csv(textConnection(tmp), stringsAsFactors=FALSE)

# change PANAL's label (NA)
colnames(dl)[which(colnames(dl)=="NA.")] <- "PANAL"
# remove text, replace with zeroes
sel <- c("PAN", "PRI", "PRD", "PT", "PVEM", "MC", "PANAL", "MORENA", "ES", "UDC", "SI", "PPC", "PJ", "PRC", "PCP", "C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "CAND_IND_1", "CAND_IND_2", "CAND_IND_3", "NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
sel <- which(colnames(dl) %in% sel)
tmp <- dl[,sel]
for (i in 1:ncol(tmp)){
    tmp[,i] <- as.numeric(tmp[,i])
    }
tmp[is.na(tmp)] <- 0
dl[,sel] <- tmp

# aggregate district votes
dlDl <- data.frame()
for (i in 1:max(dl$ID_DISTRITO_LOCAL)){
    sel <- which(dl$ID_DISTRITO_LOCAL==i)
    tmp <- dl[sel,]
    tmp$dis <- tmp$DISTRITO_LOCAL[1]
    tmp$disn <- tmp$ID_DISTRITO_LOCAL[1]
    tmp1 <- tmp[1,]
    sel <- c("PAN", "PRI", "PRD", "PT", "PVEM", "MC", "PANAL", "MORENA", "ES", "UDC", "SI", "PPC", "PJ", "PRC", "PCP", "C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "CAND_IND_1", "CAND_IND_2", "CAND_IND_3", "NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
    sel <- which(colnames(tmp) %in% sel)
    tmp1[1,sel] <- colSums(tmp[,sel])
    dlDl <- rbind(dlDl, tmp1)
}
# clean columns
sel <- c("ord", "ESTADO", "ID_DISTRITO_LOCAL", "DISTRITO_LOCAL", "SECCION", "ID_CASILLA", "TIPO_CASILLA", "EXT_CONTIGUA", "UBICACION_CASILLA", "TIPO_ACTA", "NUM_BOLETAS_SOBRANTES", "TOTAL_CIUDADANOS_VOTARON", "NUM_BOLETAS_EXTRAIDAS", "OBSERVACIONES", "CONTABILIZADA", "CRYT", "SHA", "FECHA_HORA_ACOPIO", "FECHA_HORA_CAPTURA", "FECHA_HORA_REGISTRO")
sel <- which(colnames(dlDl) %in% sel)
dlDl <- dlDl[,-sel]

# aggregate coalitions
sel <- c("C_PAN", "C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES")
sel <- which(colnames(dlDl) %in% sel)
tmp <- dlDl[,sel]
dlDl$C_PAN <- rowSums(tmp)
# will assume that no votes above implies no coalition and that coalition same in every municipality with one (probably wrong, but should affect little if most votes for PAN)
sel <- which(dlDl$C_PAN!=0)
dlDl$C_PAN[sel] <- dlDl$C_PAN[sel] + dlDl$PAN[sel] + dlDl$ES[sel] + dlDl$UDC[sel] + dlDl$PPC[sel]
dlDl$PAN[sel] <- dlDl$ES[sel] <- dlDl$UDC[sel] <- dlDl$PPC[sel] <- 0
sel <- c("C_UDC", "C_PPC", "C_ES", "C_PAN_UDC", "C_PAN_PPC", "C_PAN_ES", "C_UDC_PPC", "C_UDC_ES", "C_PPC_ES", "C_PAN_UDC_PPC", "C_PAN_UDC_ES", "C_PAN_PPC_ES", "C_UDC_PPC_ES", "C_PAN_UDC_PPC_ES")
sel <- which(colnames(dlDl) %in% sel)
dlDl <- dlDl[,-sel] # drop redundant columns
#
# pri
sel <- c("C_PRI", "C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP")
sel <- which(colnames(dlDl) %in% sel)
tmp <- dlDl[,sel]
dlDl$C_PRI <- rowSums(tmp)
# will assume that no votes above implies no coalition and that coalition same in every municipality with one (probably wrong, but should affect little if most votes for PAN)
sel <- which(dlDl$C_PRI!=0)
dlDl$C_PRI[sel] <- dlDl$PRI[sel] + dlDl$PVEM[sel] + dlDl$PANAL[sel] + dlDl$SI[sel] + dlDl$PJ[sel] + dlDl$PRC[sel] + dlDl$PCP[sel] 
dlDl$PRI[sel] <- dlDl$PVEM[sel] <- dlDl$PANAL[sel] <- dlDl$SI[sel] <- dlDl$PJ[sel] <- dlDl$PRC[sel] <- dlDl$PCP[sel] <- 0
sel <- c("C_PVEM", "C_PNA", "C_SDI", "C_PJ", "C_PRC", "C_PCP", "C_PRI_PVEM", "C_PRI_PNA", "C_PRI_SDI", "C_PRI_PJ", "C_PRI_PRC", "C_PRI_PCP", "C_PVEM_PNA", "C_PVEM_SDI", "C_PVEM_PJ", "C_PVEM_PRC", "C_PVEM_PCP", "C_PNA_SDI", "C_PNA_PJ", "C_PNA_PRC", "C_PNA_PCP", "C_SDI_PJ", "C_SDI_PRC", "C_SDI_PCP", "C_PJ_PRC", "C_PJ_PCP", "C_PRC_PCP", "C_PRI_PVEM_PNA", "C_PRI_PVEM_SDI", "C_PRI_PVEM_PJ", "C_PRI_PVEM_PRC", "C_PRI_PVEM_PCP", "C_PRI_PNA_SDI", "C_PRI_PNA_PJ", "C_PRI_PNA_PRC", "C_PRI_PNA_PCP", "C_PRI_SDI_PJ", "C_PRI_SDI_PRC", "C_PRI_SDI_PCP", "C_PRI_PJ_PRC", "C_PRI_PJ_PCP", "C_PRI_PRC_PCP", "C_PVEM_PNA_SDI", "C_PVEM_PNA_PJ", "C_PVEM_PNA_PRC", "C_PVEM_PNA_PCP", "C_PVEM_SDI_PJ", "C_PVEM_SDI_PRC", "C_PVEM_SDI_PCP", "C_PVEM_PJ_PRC", "C_PVEM_PJ_PCP", "C_PVEM_PRC_PCP", "C_PNA_SDI_PJ", "C_PNA_SDI_PRC", "C_PNA_SDI_PCP", "C_PNA_PJ_PRC", "C_PNA_PJ_PCP", "C_PNA_PRC_PCP", "C_SDI_PJ_PRC", "C_SDI_PJ_PCP", "C_SDI_PRC_PCP", "C_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI", "C_PRI_PVEM_PNA_PJ", "C_PRI_PVEM_PNA_PRC", "C_PRI_PVEM_PNA_PCP", "C_PRI_PVEM_SDI_PJ", "C_PRI_PVEM_SDI_PRC", "C_PRI_PVEM_SDI_PCP", "C_PRI_PVEM_PJ_PRC", "C_PRI_PVEM_PJ_PCP", "C_PRI_PVEM_PRC_PCP", "C_PRI_PNA_SDI_PJ", "C_PRI_PNA_SDI_PRC", "C_PRI_PNA_SDI_PCP", "C_PRI_PNA_PJ_PRC", "C_PRI_PNA_PJ_PCP", "C_PRI_PNA_PRC_PCP", "C_PRI_SDI_PJ_PRC", "C_PRI_SDI_PJ_PCP", "C_PRI_SDI_PRC_PCP", "C_PRI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ", "C_PVEM_PNA_SDI_PRC", "C_PVEM_PNA_SDI_PCP", "C_PVEM_PNA_PJ_PRC", "C_PVEM_PNA_PJ_PCP", "C_PVEM_PNA_PRC_PCP", "C_PVEM_SDI_PJ_PRC", "C_PVEM_SDI_PJ_PCP", "C_PVEM_SDI_PRC_PCP", "C_PVEM_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC", "C_PNA_SDI_PJ_PCP", "C_PNA_SDI_PRC_PCP", "C_PNA_PJ_PRC_PCP", "C_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ", "C_PRI_PVEM_PNA_SDI_PRC", "C_PRI_PVEM_PNA_SDI_PCP", "C_PRI_PVEM_PNA_PJ_PRC", "C_PRI_PVEM_PNA_PJ_PCP", "C_PRI_PVEM_PNA_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC", "C_PRI_PVEM_SDI_PJ_PCP", "C_PRI_PVEM_SDI_PRC_PCP", "C_PRI_PVEM_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC", "C_PRI_PNA_SDI_PJ_PCP", "C_PRI_PNA_SDI_PRC_PCP", "C_PRI_PNA_PJ_PRC_PCP", "C_PRI_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC", "C_PVEM_PNA_SDI_PJ_PCP", "C_PVEM_PNA_SDI_PRC_PCP", "C_PVEM_PNA_PJ_PRC_PCP", "C_PVEM_SDI_PJ_PRC_PCP", "C_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC", "C_PRI_PVEM_PNA_SDI_PJ_PCP", "C_PRI_PVEM_PNA_SDI_PRC_PCP", "C_PRI_PVEM_PNA_PJ_PRC_PCP", "C_PRI_PVEM_SDI_PJ_PRC_PCP", "C_PRI_PNA_SDI_PJ_PRC_PCP", "C_PVEM_PNA_SDI_PJ_PRC_PCP", "C_PRI_PVEM_PNA_SDI_PJ_PRC_PCP")
sel <- which(colnames(dlDl) %in% sel)
dlDl <- dlDl[,-sel] # drop redundant columns
sel <- c("NO_REGISTRADOS", "NULOS", "TOTAL_VOTOS", "LISTA_NOMINAL")
sel <- which(colnames(dlDl) %in% sel)
dlDl <- dlDl[,-sel] # drop more columns

# winner, shares
sel <- c("PAN","PRI","PRD","PT", "PVEM","MC","PANAL","MORENA", "ES","UDC","SI","PPC", "PJ","PRC","PCP","C_PAN", "C_PRI","CAND_IND_1","CAND_IND_2","CAND_IND_3")
sel <- which(colnames(dlDl) %in% sel)
tmp <- dlDl[,sel]
dlDl$efec <- rowSums(tmp)
# shares
for (i in 1: ncol(tmp)){
    tmp[,i] <- round(tmp[,i]/dlDl$efec, 3)
    }
dlDl[,sel] <- tmp
#
# handy function to sort one data frame by order of another, matching data frame
sortBy <- function(target, By){
    t <- target; b <- By;
    do.call(rbind, lapply(seq_len(nrow(b)), 
            function(i) as.character(unlist(t[i,])[order(unlist(-b[i,]))]))) # change to -b if decreasing wished
}
## # example
## v <- data.frame(c1=c(30,15,3), c2=c(10,25,2), c3=c(20,35,4))
## w <- data.frame(c1=c("thirty","fifteen","three"), c2=c("ten","twenty-five","two"), c3=c("twenty","thirty-five","four"))
## v.sorted <- t(apply(v, 1, function(x) sort(x, decreasing = TRUE))) # sort each row of df -- http://stackoverflow.com/questions/6063881/sorting-rows-alphabetically
## w.sorted <- sortBy(target = w, By = v)
## sortBy(target = v, By = v)
#
## this sorts matrix rows faster than function above
# vot <- t(apply(vot, 1, function(x) sort(x, decreasing = TRUE)))
tmp1 <- tmp
tmp1[,1] <- "pan"
tmp1[,2] <- "pri"
tmp1[,3] <- "prd"
tmp1[,4] <- "pt"
tmp1[,5] <- "pvem"
tmp1[,6] <- "mc"
tmp1[,7] <- "panal"
tmp1[,8] <- "morena"
tmp1[,9] <- "pes"
tmp1[,10] <- "udc"
tmp1[,11] <- "sdi"
tmp1[,12] <- "ppc"
tmp1[,13] <- "pj"
tmp1[,14] <- "prc"
tmp1[,15] <- "pcp"
tmp1[,16] <- "panc"
tmp1[,17] <- "pric"
tmp1[,18] <- "ind"
tmp1[,19] <- "ind"
tmp1[,20] <- "ind"
#
dlDl$win <- sortBy(target = tmp1, By = tmp)[,1]
tmp <- sortBy(target = tmp, By = tmp)
dlDl$mg <- as.numeric(tmp[,1]) - as.numeric(tmp[,2])


dlDl[, c("disn", "win", "mg")]
dlDl[1,]

rm(list = ls())

setwd("/home/eric/Dropbox/data/elecs/MXelsCalendGovt/reelec/coa2017/encuestaMoreno/")

library(foreign)
dat <- read.spss(file = "EFCOAH_MAY17.sav", to.data.frame = TRUE)

colnames(dat)

## 1 En su opinión, ¿cuál es el principal problema que hay actualmente en el Estado de Coahuila? (ANOTAR TEXTUAL)
## 2 Por lo general, ¿cuánto le interesa la política? (LEER)
## 3 ¿Sabe cuándo son las próximas elecciones para Gobernador del estado? (NO LEER: 4 DE JUNIO 2017)
## 4 Del 0 a 10, donde 0 es nada probable y 10 muy probable, ¿qué tan probable es que usted vote en las próximas elecciones para gobernador?
## 5 (USAR BOLETA 1) Si hoy hubiera elecciones para Gobernador del estado, ¿por quién votaría usted?
## 6 ¿Usted ya decidió definitivamente por quién votar para gobernador, tiene idea pero podría cambiar o aún no decide su voto?
## 7 ¿Cuál es su opinión acerca de los siguientes personajes políticos: muy buena, buena, mala, muy mala,... o no lo conoce suficiente para opinar? (LEER Y ROTAR NOMBRES)
##   a Guillermo Anaya Llamas       
##   b Miguel Ángel Riquelme        
##   c Mary Telma Guajardo Villareal
##   d José Ángel Pérez Hernández   
##   e Armando Guadiana Tijerina    
##   f Javier Guerrero García       
##   g Luis Horacio Salinas Valdez  
## 8 ¿Si la elección para gobernador solamente fuera entre Guillermo Anaya y Miguel Riquelme, ¿por quién votaría usted?
## 9 ¿Quién cree que gane la elección para gobernador? (LEER)
## 10 De los siguientes asuntos que le voy a leer, dígame por favor cuál es el más importante que debe atender el próximo gobernador del estado: (LEER)
## 11 (USAR BOLETA 2) Si hoy hubiera elecciones para Diputados Locales, ¿por cuál partido votaría usted?
## 12 (USAR BOLETA 3) Si hoy hubiera elecciones para Presidente Municipal, ¿por cuál partido votaría usted?
## 13 ¿Votó usted en las elecciones para gobernador en julio de 2011? (SÍ) ¿Por quién votó usted? (LEER OPCIONES)
## 14 En general, ¿usted aprueba o desaprueba el trabajo que Rubén Moreira está haciendo como Gobernador del estado? (INSISTIR): ¿APRUEBA/DESAPRUEBA mucho o algo?
## 15 En general, ¿está satisfecho o insatisfecho con la manera en que marchan las cosas en el estado? (INSISTIR: ¿Muy o algo?) (5=NS/NC)
## 16 En general, ¿usted aprueba o desaprueba el trabajo que Enrique Peña Nieto está haciendo como Presidente de la República? (INSISTIR): ¿APRUEBA/DESAPRUEBA mucho o algo?
## 17 ¿Cómo calificaría en estos momentos... (LEER):? muy bien, bien, mal o muy mal?
##   a La situación económica del estado
##   b Su situación económica familiar
##   c La seguridad pública en la comunidad donde vive
## 18 Generalmente, ¿usted se considera priista, panista, perredista morenista? (INSISTIR): ¿Se considera muy o algo?
## 19 (TARJETA 1) En política la gente habla de “la izquierda” y “la derecha”. En general, ¿cómo colocaría usted sus puntos de vista en esta escala, donde 1 es izquierda y 10 es derecha? También puede escoger un punto intermedio.
## 20 ¿Está usted a favor, en contra o le es indiferente la reelección consecutiva de legisladores?
## 21 El 3 de abril iniciaron las campañas para renovar el Congreso del Estado. Si yo le preguntara los nombres de los candidatos a diputado en este distrito, ¿usted me podría decir todos los nombres, algunos nombres o no recuerda ningún nombre en este momento?
## 22 Ahora piense por favor en los diputados locales actuales. Si yo le preguntara las cosas que ha hecho su diputado por esta comunidad, ¿usted podría mencionarme muchas cosas, algunas, diría que no hizo nada o no recuerda en este momento?
## 23 Si su actual diputado compitiera para buscar la reelección, ¿usted votaría por él o no votaría por él?
## 24 Con base en el trabajo realizado por su actual diputado, ¿cree que merecería ser reelecto en su cargo o no?
## 25 Le voy a leer unos nombres, para cada uno, ¿podría decirme si le es muy conocido, algo conocido, poco o nada conocido?
##   a Javier Díaz González     
##   b Lily Gutiérrez Burciaga  
##   c Georgina Cano Torralva   
##   d Ana Isabel Durán         
##   e Sonia Villareal          
##   f Lariza Montiel           
##   g Armando Pruneda          
##   h Leonel Contreras Pámanes 
##   i Florencio "Lencho" Siller
## 26 En los últimos 12 meses, ¿usted o alguien de su familia... (LEER)
##   a Perdió su empleo o fuente de ingresos económicos?
##   b Fue víctima de algún delito o un asalto?
##   c Tuvo que dar alguna mordida
## 27 Por lo general, ¿cuánto se entera de las noticias por medio de... (LEER), mucho, algo, poco o nada?
##   a Televisión
##   b Radio
##   c Periódico
##   d Pláticas con gente
##   e Internet
##   f Redes sociales
## 28 ¿Utiliza Facebook?
## 29 ¿Utiliza Twitter?
## 30 ¿Tiene Smartphone o teléfono inteligente?
## 31 ¿Usted o alguien en su hogar es beneficiario de... (LEER)?
##   a Oportunidades/Prospera
##   b Seguro Popular
##   c Algún programa social del gobierno del estado
## 32 Durante estas campañas electorales, ¿a usted o alguien en su hogar... (LEER)?
##   a Le han dado algún obsequio los partidos o candidatos
##   b Ha asistido a eventos de los partidos o candidatos
## 33 Si los candidatos a la Presidencia de la República en 2018 fueran los siguientes, ¿por quién votaría usted? (LEER Y ROTAR)
## 34 ¿Cuál es su opinión acerca de los siguientes personajes políticos: muy buena, buena, mala, muy mala,... o no lo conoce suficiente para opinar? (LEER Y ROTAR NOMBRES)
##   a Andrés Manuel López Obrador
##   b Margarita Zavala
##   c Miguel Ángel Osorio Chong
##   d Humberto Moreira
## 35 Juntando el dinero que usted y otros miembros de su familia ganan al mes, ¿diría que...? (LEER)
## A ¿Hasta qué año o grado aprobó (pasó) en la escuela? ¿Cuál es su último grado de estudios? [NS/NC=9]
## B ¿Cuál es su principal ocupación, a qué se dedica usted? (ANOTAR TEXTUAL)
## C ¿De qué religión es usted? (LEER Y ROTAR)
## D ¿Con qué frecuencia asiste usted a servicios religiosos? (LEER)

sabe fecha
recibido obsequio

table(dat$Mun)
table(dat$Secc) # confirmar c Alejandro que es sección electoral; 14 encuestados por sección es la cuota?

str(dat)

# dummies de partido
tmp <- as.numeric(dat$p18) # quita factor
dat$dpan <- as.numeric(tmp==3 | tmp==4)
dat$dpri <- as.numeric(tmp==1 | tmp==2)
dat$dprd <- as.numeric(tmp==5 | tmp==6)
dat$dmorena <- as.numeric(tmp==7 | tmp==8)
dat$dindep <- as.numeric(tmp==10 | tmp==11)
table(dat$dpan)

# dummy de que diputado ha hecho algo
tmp <- as.numeric(dat$p22) # quita factor
dat$dhaHecho <- as.numeric(tmp==1 | tmp==2)


# dummy de interés
tmp <- as.numeric(dat$p2) # quita factor
dat$dinteresaPol <- as.numeric(tmp==1 | tmp==2)
tmp <- as.numeric(dat$p3) # quita factor
dat$dsabeFecha <- as.numeric(tmp==1)

# a favor reeleccion
tmp <- as.numeric(dat$p20) # quita factor
dat$dfavorReel <- as.numeric(tmp==1)

# name recognition
tmp <- as.numeric(dat$p21) # quita factor
dat$drecuerda <- as.numeric(tmp==1 | tmp==2)

# conoce a Javier Díaz González
tmp <- as.numeric(dat$p25a) # quita factor
dat$dconoceJavier <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Lily Gutiérrez
tmp <- as.numeric(dat$p25b) # quita factor
dat$dconoceLily <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Georgina Cano
tmp <- as.numeric(dat$p25c) # quita factor
dat$dconoceGina <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Ana Isabel Durán
tmp <- as.numeric(dat$p25d) # quita factor
dat$dconoceAnaIsabel <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Sonia Villarreal
tmp <- as.numeric(dat$p25e) # quita factor
dat$dconoceSonia <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Lariza Montiel
tmp <- as.numeric(dat$p25f) # quita factor
dat$dconoceLariza <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Armando Pruneda
tmp <- as.numeric(dat$p25g) # quita factor
dat$dconoceArmando <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Leonel Contreras
tmp <- as.numeric(dat$p25h) # quita factor
dat$dconoceLeonel <- as.numeric(tmp==1 | tmp==2 | tmp==3)
# conoce a Lencho Siller
tmp <- as.numeric(dat$p25i) # quita factor
dat$dconoceLencho <- as.numeric(tmp==1 | tmp==2 | tmp==3)

# recibido obsequio
tmp <- as.numeric(dat$p32a) # quita factor
dat$drecibidoObsequio <- as.numeric(tmp==1 | tmp==2 | tmp==3)

# lee mapa electoral
mapa <- read.csv("../../../redistrict/ife.ine/mapasComparados/loc/coaLoc.csv", stringsAsFactors = FALSE)
#
# crea categorías 
mapa$huizacheJavier <- mapa$adquiridoJavier <- mapa$conservadoJavier <- mapa$perdidoJavier <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Javier Gtz
sel1 <- as.numeric(mapa$disloc2011==1)
sel2 <- as.numeric(mapa$disloc2017==14)
# codifica categorías
mapa$perdidoJavier[   sel1==1 & sel2==0] <- 1
mapa$conservadoJavier[sel1==1 & sel2==1] <- 1
mapa$adquiridoJavier[ sel1==0 & sel2==1] <- 1
mapa$huizacheJavier[  sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoJavier)
table(mapa$conservadoJavier)
table(mapa$adquiridoJavier)
table(mapa$huizacheJavier)
#
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoJavier==1)]
# manda info a datos encuesta
dat$dperdidoJavier    <- 0; dat$dperdidoJavier[   which(dat$Secc %in% mapa$seccion[which(mapa$perdidoJavier==1)])]  <- 1
dat$dconservadoJavier <- 0; dat$dconservadoJavier[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoJavier==1)])] <- 1
dat$dadquiridoJavier  <- 0; dat$dadquiridoJavier[ which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoJavier==1)])]  <- 1
dat$dhuizacheJavier   <- 0; dat$dhuizacheJavier[  which(dat$Secc %in% mapa$seccion[which(mapa$huizacheJavier ==1)])]  <- 1
# explora
table(dat$dperdidoJavier)
table(dat$dconservadoJavier)
table(dat$dadquiridoJavier)
table(dat$dhuizacheJavier)

# crea categorías 
mapa$huizacheLily <- mapa$adquiridoLily <- mapa$conservadoLily <- mapa$perdidoLily <- 0
sel1 <- as.numeric(mapa$disloc2011==5)
sel2 <- as.numeric(mapa$disloc2017==12)
# codifica categorías
mapa$perdidoLily[sel1==1 & sel2==0] <- 1
mapa$conservadoLily[sel1==1 & sel2==1] <- 1
mapa$adquiridoLily[sel1==0 & sel2==1] <- 1
mapa$huizacheLily[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoLily)
table(mapa$conservadoLily)
table(mapa$adquiridoLily)
table(mapa$huizacheLily)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoLily==1)]
# manda info a datos encuesta
dat$dperdidoLily <- 0;    dat$dperdidoLily[   which(dat$Secc %in% mapa$seccion[which(mapa$perdidoLily ==1)])] <- 1
dat$dconservadoLily <- 0; dat$dconservadoLily[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoLily==1)])] <- 1
dat$dadquiridoLily <- 0;  dat$dadquiridoLily[ which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoLily ==1)])] <- 1
dat$dhuizacheLily <- 0;  dat$dhuizacheLily[   which(dat$Secc %in% mapa$seccion[which(mapa$huizacheLily  ==1)])] <- 1
# explora
table(dat$dperdidoLily)
table(dat$dconservadoLily)
table(dat$dadquiridoLily)
table(dat$dhuizacheLily)

# crea categorías 
mapa$huizacheGina <- mapa$adquiridoGina <- mapa$conservadoGina <- mapa$perdidoGina <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Gina Gtz
sel1 <- as.numeric(mapa$disloc2011==15)
sel2 <- as.numeric(mapa$disloc2017==1)
# codifica categorías
mapa$perdidoGina[sel1==1 & sel2==0] <- 1
mapa$conservadoGina[sel1==1 & sel2==1] <- 1
mapa$adquiridoGina[sel1==0 & sel2==1] <- 1
mapa$huizacheGina[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoGina)
table(mapa$conservadoGina)
table(mapa$adquiridoGina)
table(mapa$huizacheGina)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoGina==1)]
# manda info a datos encuesta
dat$dperdidoGina <- 0;    dat$dperdidoGina[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoGina==1)])] <- 1
dat$dconservadoGina <- 0; dat$dconservadoGina[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoGina==1)])] <- 1
dat$dadquiridoGina <- 0;  dat$dadquiridoGina[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoGina==1)])] <- 1
dat$dhuizacheGina <- 0;  dat$dhuizacheGina[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheGina ==1)])] <- 1
# explora
table(dat$dperdidoGina)
table(dat$dconservadoGina)
table(dat$dadquiridoGina)
table(dat$dhuizacheGina)

# crea categorías 
mapa$huizacheAnaIsabel <- mapa$adquiridoAnaIsabel <- mapa$conservadoAnaIsabel <- mapa$perdidoAnaIsabel <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de AnaIsabel Gtz
sel1 <- as.numeric(mapa$disloc2011==10)
sel2 <- as.numeric(mapa$munn==33)
# codifica categorías
mapa$perdidoAnaIsabel[sel1==1 & sel2==0] <- 1
mapa$conservadoAnaIsabel[sel1==1 & sel2==1] <- 1
mapa$adquiridoAnaIsabel[sel1==0 & sel2==1] <- 1
mapa$huizacheAnaIsabel[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoAnaIsabel)
table(mapa$conservadoAnaIsabel)
table(mapa$adquiridoAnaIsabel)
table(mapa$huizacheAnaIsabel)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoAnaIsabel==1)]
# manda info a datos encuesta
dat$dperdidoAnaIsabel <- 0;    dat$dperdidoAnaIsabel[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoAnaIsabel==1)])] <- 1
dat$dconservadoAnaIsabel <- 0; dat$dconservadoAnaIsabel[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoAnaIsabel==1)])] <- 1
dat$dadquiridoAnaIsabel <- 0;  dat$dadquiridoAnaIsabel[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoAnaIsabel==1)])] <- 1
dat$dhuizacheAnaIsabel <- 0;  dat$dhuizacheAnaIsabel[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheAnaIsabel ==1)])] <- 1
# explora
table(dat$dperdidoAnaIsabel)
table(dat$dconservadoAnaIsabel)
table(dat$dadquiridoAnaIsabel)
table(dat$dhuizacheAnaIsabel)

# crea categorías 
mapa$huizacheSonia <- mapa$adquiridoSonia <- mapa$conservadoSonia <- mapa$perdidoSonia <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Sonia Gtz
sel1 <- as.numeric(mapa$disloc2011==16)
sel2 <- as.numeric(mapa$munn==25)
# codifica categorías
mapa$perdidoSonia[sel1==1 & sel2==0] <- 1
mapa$conservadoSonia[sel1==1 & sel2==1] <- 1
mapa$adquiridoSonia[sel1==0 & sel2==1] <- 1
mapa$huizacheSonia[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoSonia)
table(mapa$conservadoSonia)
table(mapa$adquiridoSonia)
table(mapa$huizacheSonia)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoSonia==1)]
# manda info a datos encuesta
dat$dperdidoSonia <- 0;    dat$dperdidoSonia[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoSonia==1)])] <- 1
dat$dconservadoSonia <- 0; dat$dconservadoSonia[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoSonia==1)])] <- 1
dat$dadquiridoSonia <- 0;  dat$dadquiridoSonia[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoSonia==1)])] <- 1
dat$dhuizacheSonia <- 0;  dat$dhuizacheSonia[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheSonia ==1)])] <- 1
# explora
table(dat$dperdidoSonia)
table(dat$dconservadoSonia)
table(dat$dadquiridoSonia)
table(dat$dhuizacheSonia)

# crea categorías 
mapa$huizacheLencho <- mapa$adquiridoLencho <- mapa$conservadoLencho <- mapa$perdidoLencho <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Lencho Gtz
sel1 <- as.numeric(mapa$disloc2011==11)
sel2 <- as.numeric(mapa$munn==10)
# codifica categorías
mapa$perdidoLencho[sel1==1 & sel2==0] <- 1
mapa$conservadoLencho[sel1==1 & sel2==1] <- 1
mapa$adquiridoLencho[sel1==0 & sel2==1] <- 1
mapa$huizacheLencho[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoLencho)
table(mapa$conservadoLencho)
table(mapa$adquiridoLencho)
table(mapa$huizacheLencho)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoLencho==1)]
# manda info a datos encuesta
dat$dperdidoLencho <- 0;    dat$dperdidoLencho[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoLencho==1)])] <- 1
dat$dconservadoLencho <- 0; dat$dconservadoLencho[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoLencho==1)])] <- 1
dat$dadquiridoLencho <- 0;  dat$dadquiridoLencho[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoLencho==1)])] <- 1
dat$dhuizacheLencho <- 0;  dat$dhuizacheLencho[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheLencho ==1)])] <- 1
# explora
table(dat$dperdidoLencho)
table(dat$dconservadoLencho)
table(dat$dadquiridoLencho)
table(dat$dhuizacheLencho)

# crea categorías 
mapa$huizacheLariza <- mapa$adquiridoLariza <- mapa$conservadoLariza <- mapa$perdidoLariza <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Lariza Gtz
sel1 <- 1 #as.numeric(mapa$disloc2011==10)
sel2 <- as.numeric(mapa$munn==33)
# codifica categorías
mapa$perdidoLariza[sel1==1 & sel2==0] <- 1
mapa$conservadoLariza[sel1==1 & sel2==1] <- 1
mapa$adquiridoLariza[sel1==0 & sel2==1] <- 1
mapa$huizacheLariza[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoLariza)
table(mapa$conservadoLariza)
table(mapa$adquiridoLariza)
table(mapa$huizacheLariza)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoLariza==1)]
# manda info a datos encuesta
dat$dperdidoLariza <- 0;    dat$dperdidoLariza[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoLariza==1)])] <- 1
dat$dconservadoLariza <- 0; dat$dconservadoLariza[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoLariza==1)])] <- 1
dat$dadquiridoLariza <- 0;  dat$dadquiridoLariza[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoLariza==1)])] <- 1
dat$dhuizacheLariza <- 0;  dat$dhuizacheLariza[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheLariza ==1)])] <- 1
# explora
table(dat$dperdidoLariza)
table(dat$dconservadoLariza)
table(dat$dadquiridoLariza)
table(dat$dhuizacheLariza)

# crea categorías 
mapa$huizacheArmando <- mapa$adquiridoArmando <- mapa$conservadoArmando <- mapa$perdidoArmando <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Armando Gtz
sel1 <- 1; #as.numeric(mapa$disloc2011==10)
sel2 <- as.numeric(mapa$munn==33)
# codifica categorías
mapa$perdidoArmando[sel1==1 & sel2==0] <- 1
mapa$conservadoArmando[sel1==1 & sel2==1] <- 1
mapa$adquiridoArmando[sel1==0 & sel2==1] <- 1
mapa$huizacheArmando[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoArmando)
table(mapa$conservadoArmando)
table(mapa$adquiridoArmando)
table(mapa$huizacheArmando)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoArmando==1)]
# manda info a datos encuesta
dat$dperdidoArmando <- 0;    dat$dperdidoArmando[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoArmando==1)])] <- 1
dat$dconservadoArmando <- 0; dat$dconservadoArmando[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoArmando==1)])] <- 1
dat$dadquiridoArmando <- 0;  dat$dadquiridoArmando[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoArmando==1)])] <- 1
dat$dhuizacheArmando <- 0;  dat$dhuizacheArmando[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheArmando ==1)])] <- 1
# explora
table(dat$dperdidoArmando)
table(dat$dconservadoArmando)
table(dat$dadquiridoArmando)
table(dat$dhuizacheArmando)

# crea categorías 
mapa$huizacheLeonel <- mapa$adquiridoLeonel <- mapa$conservadoLeonel <- mapa$perdidoLeonel <- 0
# identifica secciones pertenecientes a distrito del viejo/nuevo mapa de Leonel Gtz
sel1 <- 1; #as.numeric(mapa$disloc2011==10)
sel2 <- as.numeric(mapa$munn==17)
# codifica categorías
mapa$perdidoLeonel[sel1==1 & sel2==0] <- 1
mapa$conservadoLeonel[sel1==1 & sel2==1] <- 1
mapa$adquiridoLeonel[sel1==0 & sel2==1] <- 1
mapa$huizacheLeonel[sel1==0 & sel2==0] <- 1
# verifica que categorías sean exhaustivas y mutuamente excluyentes
#table(rowSums(mapa[,c("perdido","conservado","adquirido","huizache")]))
# explora
table(mapa$perdidoLeonel)
table(mapa$conservadoLeonel)
table(mapa$adquiridoLeonel)
table(mapa$huizacheLeonel)
# exporta cuatro terrenos a la encuesta 
#mapa$seccion[which(mapa$conservadoLeonel==1)]
# manda info a datos encuesta
dat$dperdidoLeonel <- 0;    dat$dperdidoLeonel[which(dat$Secc %in% mapa$seccion[which(mapa$perdidoLeonel==1)])] <- 1
dat$dconservadoLeonel <- 0; dat$dconservadoLeonel[which(dat$Secc %in% mapa$seccion[which(mapa$conservadoLeonel==1)])] <- 1
dat$dadquiridoLeonel <- 0;  dat$dadquiridoLeonel[which(dat$Secc %in% mapa$seccion[which(mapa$adquiridoLeonel==1)])] <- 1
dat$dhuizacheLeonel <- 0;  dat$dhuizacheLeonel[ which(dat$Secc %in% mapa$seccion[which(mapa$huizacheLeonel ==1)])] <- 1
# explora
table(dat$dperdidoLeonel)
table(dat$dconservadoLeonel)
table(dat$dadquiridoLeonel)
table(dat$dhuizacheLeonel)

# hay incumbent en boleta
dat$dincumbDip <- dat$dconservadoJavier + dat$dconservadoLily + dat$dconservadoGina +      # incumbent quiere ser dip
                  dat$dperdidoJavier + dat$dperdidoLily + dat$dperdidoGina        
dat$dincumbMun <- dat$dconservadoAnaIsabel + dat$dconservadoSonia + dat$dconservadoLencho # incumbent quiere ser pm
dat$drpMun <- dat$dconservadoLariza + dat$dconservadoArmando + dat$dconservadoLeonel      # rp quiere ser pm
table(dat$dincumbDip)

# tiene smartphone
tmp <- as.numeric(dat$p30) # quita factor
dat$dsmartPh <- as.numeric(tmp==1)

mean(dat$dsmartPh)
table(dat$drecibidoObsequio)

# function to mean-center IVs
mean_center <- function(x) {
    apply(x, 2, function(y) y - mean(y))
}


# regression
# favor reeleccion
model <- glm(dfavorReel ~ dinteresaPol + drecibidoObsequio + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model)
# ha hecho algo
model <- glm(dhaHecho ~ dinteresaPol*dincumbDip + dsmartPh + dpan + dpri + dmorena + dincumbMun, data = dat, family = "binomial")
summary(model)
# name recognition
#model <- lm(dconoceGina ~  dconservadoGina + dperdidoGina + dadquiridoGina + dinteresaPol + dpan + dpri + dmorena, data = dat)
#summary(model)
model1 <- glm(dconoceJavier    ~  dconservadoJavier    + dperdidoJavier    + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model1)
model2 <- glm(dconoceLily      ~  dconservadoLily                          + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model2)
model3 <- glm(dconoceGina      ~  dconservadoGina                          + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model3)
model4 <- glm(dconoceAnaIsabel ~  dconservadoAnaIsabel + dperdidoAnaIsabel + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri          , data = dat, family = "binomial")
summary(model4)
model5 <- glm(dconoceSonia     ~  dconservadoSonia                         + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model5)
model6 <- glm(dconoceLencho    ~  dconservadoLencho    + dperdidoLencho    + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model6)
model7 <- glm(dconoceLariza    ~  dconservadoLariza                        + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model7)
model8 <- glm(dconoceArmando   ~  dconservadoArmando                       + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model8)
model9 <- glm(dconoceLeonel    ~  dconservadoLeonel                        + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model9)

# para reportar tabla hay que homogeneizar nombres de vars...
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceJavier; tmp$dconservado <- tmp$dconservadoJavier; tmp$dperdido <- tmp$dperdidoJavier; 
tmp$dconoceJavier <- tmp$dconservadoJavier <- NULL
tmp1 <- glm(dconoce ~  dconservado + dperdido + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp1)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceLily; tmp$dconservado <- tmp$dconservadoLily; tmp$dperdido <- tmp$dperdidoLily; 
tmp$dconoceLily <- tmp$dconservadoLily <- NULL
tmp2 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp2)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceGina; tmp$dconservado <- tmp$dconservadoGina; tmp$dperdido <- tmp$dperdidoGina; 
tmp$dconoceGina <- tmp$dconservadoGina <- NULL
tmp3 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp3)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceAnaIsabel; tmp$dconservado <- tmp$dconservadoAnaIsabel; tmp$dperdido <- tmp$dperdidoAnaIsabel; 
tmp$dconoceAnaIsabel <- tmp$dconservadoAnaIsabel <- NULL
tmp4 <- glm(dconoce ~  dconservado + dperdido + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri         , data = tmp, family = "binomial")
summary(tmp4)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceSonia; tmp$dconservado <- tmp$dconservadoSonia; tmp$dperdido <- tmp$dperdidoSonia; 
tmp$dconoceSonia <- tmp$dconservadoSonia <- NULL
tmp5 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp5)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceLencho; tmp$dconservado <- tmp$dconservadoLencho; tmp$dperdido <- tmp$dperdidoLencho; 
tmp$dconoceLencho <- tmp$dconservadoLencho <- NULL
tmp6 <- glm(dconoce ~  dconservado + dperdido + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp6)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceLariza; tmp$dconservado <- tmp$dconservadoLariza; tmp$dperdido <- tmp$dperdidoLariza; 
tmp$dconoceLariza <- tmp$dconservadoLariza <- NULL
tmp7 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp7)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceArmando; tmp$dconservado <- tmp$dconservadoArmando; tmp$dperdido <- tmp$dperdidoArmando; 
tmp$dconoceArmando <- tmp$dconservadoArmando <- NULL
tmp8 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp8)
tmp <- dat # duplica
tmp$dconoce <- tmp$dconoceLeonel; tmp$dconservado <- tmp$dconservadoLeonel; tmp$dperdido <- tmp$dperdidoLeonel; 
tmp$dconoceLeonel <- tmp$dconservadoLeonel <- NULL
tmp9 <- glm(dconoce ~  dconservado            + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = tmp, family = "binomial")
summary(tmp9)
library(stargazer)
stargazer(tmp1, tmp2, tmp3, tmp6, tmp5, tmp4, tmp8, tmp7, tmp9, title="Resultados Logit", align=TRUE, report = ('vc*s'), 
     covariate.labels = c("conservado","perdido","ha.hecho","interesa.polít","smartphone","panista","priista","morenista","constante"),
     keep.stat = c("n","ll"), float.env = "sidewaystable", initial.zero = FALSE, digits = 2)

rm(tmp, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9)

# dmorena too correlated with AnaIsabel's respondents
table(dat$dconservadoAnaIsabel, dat$dmorena)
table(dat$dperdidoAnaIsabel, dat$dmorena)

#######################
#######################
##  JAGS ESTIMATION  ##
#######################
#######################
library(R2jags)
###########
## MODEL ##
###########
logitModel <- function() {
    ### OLS regression model
    for (n in 1:N){                ## loop over observations
        depvar[n] ~ dbern(p[n]);   
        logit(p[n]) <- inprod(beta[],X[n,]);  ## FLEXIBLE SPECIFICATION FOR VARYING N OF REGRESSORS, PREPARE depvar AND X IN R
    }
    ############################
    ## NON-INFORMATIVE PRIORS ##
    ############################
    for (k in 1:K){                ## loop over regressors
        beta[k] ~ dnorm(0, .0001);
    }
}
#
# Wrap in a function
fitJags <- function(model = NA, test = TRUE, incl.perdido = FALSE, incl.morena = FALSE) {
    ######################################
    ### EXTRA DATA PREP FOR JAGS MODEL ###
    ######################################
    #model <- model2 # debug
    model <- model                                 # generic model name
    incl.perdido <- FALSE; incl.morena <- FALSE;
    tmp <- grep("dperdido", variable.names(model))    # is dperdido included in right side?
    if (length(tmp)>0) incl.perdido <- TRUE 
    tmp <- grep("dmorena", variable.names(model))     # is morena included in right side?
    if (length(tmp)>0) incl.morena <- TRUE 
    dat.tmp <- dat # duplicate
    if (incl.perdido==TRUE) {
        incumbent <- variable.names(model)[grep("dperdido", variable.names(model))]# get incumbent's perdido variable name
        dat.tmp$dperdido <- dat.tmp[, incumbent]                                   # select proper column (if applicable), rename it
    } else {
        dat.tmp$dperdido <- NA                                                     # fills false columns that will be dropped
        }
    incumbent <- variable.names(model)[grep("dconservado", variable.names(model))] # get incumbent's conservado variable name
    dat.tmp$dconservado <- dat.tmp[, incumbent]                                    # select proper column, rename it
    incumbent <- sub("dconservado", "", incumbent)                                 # trim incumbent's name
    dat.tmp$dconoce  <- dat.tmp[, paste("dconoce", incumbent, sep = "")]           # get incumbent's dep var
    depvar <- dat.tmp$dconoce
    N <- length(depvar)
    # prepares subset w all variables...
    X <- data.frame(cons=rep(1, N),
                    dconservado=dat.tmp$dconservado,
                    dperdido=dat.tmp$dperdido,
                    dhaHecho=dat.tmp$dhaHecho,
                    dinteresaPol=dat.tmp$dinteresaPol,
                    dsmartPh=dat.tmp$dsmartPh,
                    dpan=dat.tmp$dpan,
                    dpri=dat.tmp$dpri,
                    dmorena=dat.tmp$dmorena)
    # ... then drops redundant ones where applicable
    if (incl.perdido==FALSE)  X$dperdido <- NULL
    if (incl.morena==FALSE)   X$dmorena  <- NULL
    #
    # labels to interpret parameters
    var.labels <- colnames(X)
    K <- length(var.labels)
    X <- as.matrix(X)
    ### Data, initial values, and parameter vector for jags
    dl.data <- list("N", "K", "depvar", "X")
    dl.inits <- function (){
        list (
        #beta=rnorm(K),
            beta=summary(model)$coefficients[,1] # use glm's estimates
        )
    }
    dl.parameters <- c("beta")
    #dm.parameters <- c("beta", "sigma", "depvar.hat")
    ## test ride
    if (test == TRUE) {
        tmp <- jags (data=dl.data, inits=dl.inits, dl.parameters,
                     model.file=logitModel, n.chains=3,
                     n.iter=100, n.thin=10
                     )
    } else {
        ## estimate
        fit <- jags (data=dl.data, inits=dl.inits, dl.parameters,
                     model.file=logitModel, n.chains=3,
                     n.iter=50000, n.thin=100,
                     )
    }
    #
    #tmp <- fit
    if (test == FALSE) {
        fit <- update(fit, 10000) # continue updating to produce 10000 new draws per chain
        #traceplot(fit) # visually check posterior parameter convergence
        #
        fit$var.labels <- var.labels # add object to interpret coefficients
        #
        fit$incumbent <- incumbent
        return(fit)
    }
}
#
fit1 <- fitJags(model = model1, test = FALSE) # takes same right side as model estimated above
fit2 <- fitJags(model = model2, test = FALSE) # takes same right side as model estimated above
fit3 <- fitJags(model = model3, test = FALSE) # takes same right side as model estimated above
fit4 <- fitJags(model = model4, test = FALSE) # takes same right side as model estimated above
fit5 <- fitJags(model = model5, test = FALSE) # takes same right side as model estimated above
fit6 <- fitJags(model = model6, test = FALSE) # takes same right side as model estimated above
fit7 <- fitJags(model = model7, test = FALSE) # takes same right side as model estimated above
fit8 <- fitJags(model = model8, test = FALSE) # takes same right side as model estimated above
fit9 <- fitJags(model = model9, test = FALSE) # takes same right side as model estimated above

sims4List <- function(fit = NA, posInList = NA){
    fit <- fit
    posInList <- posInList
    incumbent <- fit$incumbent
    tmp <- grep("dperdido", fit$var.labels)    # is dperdido included in right side?
    if (length(tmp)>0) {
        incl.perdido <- TRUE
    } else {
        incl.perdido <- FALSE
    }
    tmp <- grep("dmorena", fit$var.labels)     # is morena included in right side?
    if (length(tmp)>0) {
        incl.morena <- TRUE
    } else {
        incl.morena <- FALSE
    }
    # plug elements into sims list
    antilogit <- function(X){ exp(X) / (exp(X)+1) }
    ## pr(recognizes candidate)
    coefs <- fit$BUGSoutput$sims.matrix; coefs <- coefs[,-grep("deviance", colnames(fit$BUGSoutput$sims.matrix))]
    if (incl.perdido==TRUE & incl.morena==TRUE) scenario <- c(
                                                    1, #cons=1,
                                                    0, #dconservado will be changed to c(0,1) below,
                                                    0, #dperdido will be changed to c(0,1) below,
                                                    1, #dhaHecho=1,
                                                    0, #dinteresaPol=0,
                                                    median(dat.tmp$dsmartPh), #dsmartPh=median,
                                                    1, #dpan=c(0,1),
                                                    0, #dpri=c(0,1),
                                                    0  #dmorena=c(0,1)
                                                )
    if (incl.perdido==FALSE & incl.morena==TRUE) scenario <- c(
                                                    1, #cons=1,
                                                    0, #dconservado will be changed to c(0,1) below,
                                                    1, #dhaHecho=1,
                                                    0, #dinteresaPol=0,
                                                    median(dat.tmp$dsmartPh), #dsmartPh=median,
                                                    1, #dpan=c(0,1),
                                                    0, #dpri=c(0,1),
                                                    0  #dmorena=c(0,1)
                                                )
    if (incl.perdido==TRUE & incl.morena==FALSE) scenario <- c(
                                                    1, #cons=1,
                                                    0, #dconservado will be changed to c(0,1) below,
                                                    0, #dperdido will be changed to c(0,1) below,
                                                    1, #dhaHecho=1,
                                                    0, #dinteresaPol=0,
                                                    median(dat.tmp$dsmartPh), #dsmartPh=median,
                                                    1, #dpan=c(0,1),
                                                    0 #dpri=c(0,1),
                                                )
    names(scenario) <- fit$var.labels
    #
    n <- nrow(coefs)
    sc <- matrix(rep(scenario, n), nrow = n, byrow = TRUE)
    sc <- as.data.frame(sc)
    colnames(sc) <- fit$var.labels
    # change dconoce and dperdido by alternating 0,1
    if (incl.perdido==FALSE) {
        sc$dconservado <- rep ( 0:1, n/2)
    } else {
        sc$dconservado <- rep ( 0:2, n/3)
        sc$dperdido[sc$dconservado==2] <- 1
        sc$dconservado[sc$dconservado==2] <- 0
    }        
    sc <- as.matrix(sc)
    #
    tmp <- fit$BUGSoutput$summary[grep("beta", rownames(fit$BUGSoutput$summary)),1] # coef point pred (mean posterior)
    pointPred <- sc %*% diag(tmp) # achieves multiplication of matrix columns by vector
    pointPred <- antilogit(rowSums(pointPred)) # will plug this in sc later
    #
    pred <- sc * coefs
    pred <- antilogit(rowSums(pred)) # will plug this in sc later
    #
    sc <- as.data.frame(sc); colnames(sc) <- fit$var.labels
    sc$pred <- pred; #rm(pred)
    sc$pointPred <- pointPred; #rm(pointPred)
    #
    return(list(sc=sc, posInList=posInList, incumbent=incumbent, incl.perdido=incl.perdido))
}

sims <- list(NA,NA,NA,NA,NA,NA,NA,NA,NA) # will receive simulations
#
# plug simulations into sims list
tmp <- sims4List(fit = fit1, posInList = 1)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit2, posInList = 2)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit3, posInList = 3)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit4, posInList = 4)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit5, posInList = 5)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit6, posInList = 6)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit7, posInList = 7)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit8, posInList = 8)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
tmp <- sims4List(fit = fit9, posInList = 9)
sims[[tmp$posInList]] <- tmp$sc             # plug sims into list
names(sims)[tmp$posInList] <- tmp$incumbent # name it
summary(sims)

# kernel density plots
names <- c("Javier Díaz González", "Lily Gutiérrez Burciaga", "Georgina Cano Torralva", "Ana Isabel Durán Piña", "Sonia Villarreal Pérez", "Lencho Siller", "Lariza Montiel Luis", "J. Armando Pruneda Valdez", "Leonel Contreras Pámanes")
incl.perdido <- c(TRUE,FALSE,FALSE,TRUE,FALSE,TRUE,FALSE,FALSE,FALSE)
i <- 2 # select one fit's sims
for (i in 1:9){
    sc <- sims[[i]]; incumbent <- names(sims[i])
    d <- density(sc$pred[sc$dconservado==0])
    d1 <- density(sc$pred[sc$dconservado==1])
    if (incl.perdido[i]==TRUE) d2 <- density(sc$pred[sc$dperdido==1])
    pdf(file = paste("../graphs/prReconoce", i, ".pdf",sep = ""), width = 7, height = 3.5)
      par(mar = c(2,2,2,2) + .1)
      plot(d, xlim = c(0,1), type = "n", main = names[i], axes = FALSE, ylab = "", xlab = "Prob(reconocimiento)", cex.main = 2)
      axis(1)
      polygon(d,  col = rgb(0,0,1, alpha = .5))
      polygon(d1, col = rgb(1,0,0, alpha = .5))
      if (incl.perdido[i]==TRUE) polygon(d2, col = rgb(0,1,0, alpha = .5))
    dev.off()
}

## library(ggplot2)
## #pdf (file = paste(gr, "predictedPr.pdf", sep = ""), width = 7, height = 4)
## ggplot(sc, aes(x = dconservado, y = pointPred)) +
##   geom_ribbon(aes(ymin = ll, ymax = ul, fill = factor(dconservado)), alpha = .2) +
##   geom_line(aes(colour = factor(dconservado)), size=1)
## #dev.off()

head(sc)

########################
# simulations end here #
########################

rm(list = ls())

#setwd("/home/eric/Dropbox/data/elecs/MXelsCalendGovt/reelec/coa2017/encuestaMoreno/")
setwd("/home/eric/Dropbox/data/elecs/MXelsCalendGovt/reelec/coa2017/data/")

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

#sabe fecha
#recibido obsequio

table(dat$Mun)
table(dat$Secc) # confirmar c Alejandro que es sección electoral; 14 encuestados por sección es la cuota?

str(dat)

#############################
## add 2017 state district ##
#############################
disn <- data.frame(
seccion = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75,
76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140,
141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160,
161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180,
181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200,
201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220,
221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240,
241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260,
261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280,
281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300,
301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320,
321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360,
361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380,
381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400,
401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420,
421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440,
441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460,
461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480,
481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500,
501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520,
521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540,
541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560,
561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580,
581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600,
601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620,
621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640,
641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660,
661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680,
681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700,
701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720,
721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740,
741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760,
761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780,
781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800,
801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820,
821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840,
841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860,
861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880,
881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900,
901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920,
921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940,
941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960,
961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980,
981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000,
1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017,
1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034,
1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051,
1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068,
1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085,
1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102,
1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119,
1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136,
1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153,
1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170,
1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187,
1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204,
1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221,
1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238,
1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255,
1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272,
1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289,
1290, 1291, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306,
1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323,
1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340,
1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357,
1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374,
1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391,
1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408,
1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425,
1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442,
1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459,
1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476,
1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493,
1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502, 1503, 1504, 1505, 1506, 1507, 1508, 1509, 1510,
1511, 1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525, 1526, 1527,
1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544,
1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560, 1561,
1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1578,
1579, 1580, 1581, 1582, 1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592, 1593, 1594, 1595,
1596, 1597, 1598, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611, 1612,
1613, 1614, 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629,
1630, 1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646,
1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663,
1664, 1665, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1680,
1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692, 1693, 1694, 1695, 1696, 1697,
1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710),
disn2017 = c(5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 12, 12, 12, 12,
12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 5, 5, 5, 6, 6, 6, 6,
6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 12, 12, 12, 12, 12, 12,
12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
5, 5, 5, 5, 5, 4, 4, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
7, 6, 5, 5, 5, 5, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 5, 5, 5, 5, 5, 5, 5,
5, 5, 5, 5, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6,
6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6,
6, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 6, 6, 6, 6, 5, 6, 5, 5, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3,
3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 2, 2,
2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5,
5, 5, 5, 5, 5, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 14, 14, 14, 14, 14,
14, 13, 13, 13, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14,
14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15,
13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15,
15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 14, 14, 14, 15, 15, 15,
15, 15, 15, 15, 15, 15, 15, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 15, 15, 15, 15, 15, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13,
13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
15, 15, 15, 15, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 16, 13, 16, 16, 16, 16, 16, 16, 16, 13, 15,
15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 16, 16, 16, 16, 16,
16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
16, 16, 16, 16, 16, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3,
3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
4, 4, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 11, 11, 11, 11, 11, 11, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
11, 11, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 9, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10,
9, 10, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 8, 8, 8, 8, 8, 8, 8, 8, 8, 10, 11, 7, 7, 7, 7, 7,
7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 1,
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 6,
6, 6, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 14, 14, 14, 14, 14, 14, 14, 14, 14,
14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 16, 16, 16,
16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1))
#
library(plyr)
dat$disn <- mapvalues(dat$Secc, from=disn$seccion, to=disn$disn2017)
rm(disn)

########################
## fix vote intention ##
########################
p5 <- c(2, 13, 13, 18, 20, 6, 20, 20, 2, 18, 20, 6, 2, 20, 20, 2, 20, 2, 18, 10, 1, 2, 6, 6, 1, 1, 18, 18, 18, 6, 20, 1, 18, 20, 19, 20, 20, 1, 6, 20, 2, 20, 20, 20, 19, 6, 19, 1, 20, 20, 20, 13, 20, 6, 20, 1, 15, 15, 2, 19, 1, 20, 2, 2, 13, 1, 2, 13, 2, 2, 2, 3, 2, 13, 20, 1, 2, 13, 2, 18, 15, 2, 2, 13, 13, 2, 20, 20, 2, 20, 20, 20, 20, 1, 13, 2, 2, 13, 1, 2, 2, 1, 20, 19, 13, 20, 2, 1, 18, 1, 1, 5, 2, 1, 13, 20, 1, 1, 2, 20, 13, 2, 2, 1, 2, 15, 20, 20, 20, 1, 13, 20, 13, 20, 2, 19, 1, 2, 1, 1, 13, 10, 10, 6, 2, 20, 20, 20, 20, 20, 20, 18, 1, 20, 20, 4, 20, 11, 2, 20, 5, 13, 1, 13, 20, 19, 2, 2, 13, 1, 13, 15, 20, 20, 19, 20, 20, 20, 1, 2, 20, 15, 2, 4, 13, 7, 2, 1, 19, 19, 20, 2, 20, 20, 6, 2, 1, 15, 13, 2, 19, 1, 2, 2, 20, 1, 1, 18, 2, 15, 13, 13, 13, 13, 2, 1, 13, 1, 15, 13, 1, 8, 1, 20, 15, 20, 13, 19, 2, 20, 2, 1, 19, 1, 2, 19, 13, 1, 13, 15, 4, 1, 20, 1, 4, 20, 2, 2, 1, 1, 1, 1, 1, 14, 1, 18, 1, 20, 1, 3, 2, 1, 1, 20, 1, 20, 18, 20, 2, 1, 16, 1, 2, 2, 2, 17, 19, 1, 1, 18, 2, 1, 18, 2, 1, 13, 19, 19, 19, 18, 18, 18, 2, 18, 1, 16, 19, 13, 18, 17, 2, 20, 2, 1, 6, 18, 18, 18, 18, 2, 7, 12, 18, 1, 18, 20, 13, 11, 15, 17, 2, 13, 19, 20, 16, 16, 1, 19, 18, 2, 1, 3, 2, 19, 17, 1, 13, 1, 18, 2, 19, 13, 15, 6, 16, 13, 19, 19, 2, 13, 2, 18, 18, 2, 18, 2, 1, 15, 1, 3, 1, 2, 18, 1, 19, 2, 2, 19, 16, 1, 20, 15, 20, 2, 2, 18, 18, 2, 2, 19, 19, 15, 17, 5, 13, 19, 2, 1, 1, 3, 20, 2, 2, 7, 2, 4, 2, 1, 13, 2, 18, 18, 2, 2, 1, 18, 5, 18, 13, 1, 20, 2, 20, 6, 2, 1, 19, 19, 1, 19, 13, 13, 1, 13, 2, 20, 2, 4, 2, 19, 18, 18, 1, 20, 1, 1, 13, 1, 2, 13, 13, 1, 1, 1, 2, 18, 1, 2, 2, 7, 18, 18, 2, 18, 18, 1, 3, 2, 18, 2, 2, 7, 18, 2, 1, 20, 13, 9, 18, 20, 6, 20, 12, 2, 2, 2, 20, 2, 1, 18, 10, 2, 7, 1, 2, 1, 19, 18, 2, 2, 1, 2, 1, 10, 20, 20, 14, 15, 2, 2, 13, 18, 10, 2, 20, 13, 3, 1, 20, 19, 2, 13, 2, 2, 13, 20, 12, 8, 1, 13, 2, 2, 1, 18, 2, 2, 2, 2, 11, 2, 10, 1, 1, 18, 15, 18, 2, 18, 13, 12, 14, 18, 13, 2, 2, 20, 18, 1, 18, 2, 20, 15, 20, 2, 1, 18, 18, 2, 18, 13, 2, 13, 13, 2, 18, 13, 18, 2, 2, 2, 2, 15, 2, 20, 20, 15, 2, 13, 2, 15, 2, 2, 19, 1, 5, 1, 2, 20, 20, 20, 20, 2, 2, 14, 1, 1, 18, 1, 18, 13, 18, 18, 20, 20, 2, 20, 2, 1, 1, 2, 2, 13, 1, 2, 3, 15, 20, 20, 19, 18, 5, 20, 13, 2, 2, 2, 2, 20, 15, 13, 13, 1, 2, 18, 13, 2, 7, 2, 1, 20, 20, 18, 20, 2, 1, 13, 5, 1, 2, 20, 13, 19, 2, 13, 13, 20, 1, 2, 20, 1, 2, 5, 20, 20, 13, 20, 13, 15, 2, 20, 13, 2, 19, 15, 1, 16, 1, 2, 15, 1, 20, 15, 20, 19, 19, 16, 2, 2, 14, 13, 1, 18, 2, 2, 19, 20, 1, 1, 1, 19, 15, 2, 2, 19, 1, 2, 1, 2, 15, 1, 20, 1, 20, 2, 1, 19, 1, 2, 2, 13, 18, 1, 2, 2, 1, 2, 1, 1, 13, 1, 15, 20, 15, 3, 15, 13, 15, 15, 15, 2, 20, 20, 16, 5, 2, 2, 19, 2, 20, 20, 19, 20, 20, 1, 15, 3, 15, 15, 1, 20, 5, 1, 1, 1, 1, 20, 1, 2, 1, 20, 2, 1, 1, 18, 5, 18, 20, 2, 2, 18, 2, 1, 1, 18, 2, 18, 13, 1, 2, 2, 15, 20, 1, 18, 2, 13, 2, 20, 18, 8, 1, 4, 18, 1, 1, 2, 2, 20, 1, 2, 2, 1, 14, 4, 20, 1, 2, 2, 20, 20, 20, 1, 2, 1, 1, 1, 2, 2, 20, 13, 20, 5, 20, 2, 20, 2, 1, 2, 1, 1, 20, 19, 2, 20, 20, 2, 5, 2, 16, 5, 20, 20, 13, 4, 13, 19, 2, 2, 20, 2, 2, 1, 5, 1, 1, 13, 2, 20, 1, 20, 20, 18, 15, 20, 1, 1, 2, 2, 1, 13, 2, 9, 18, 2, 20, 20, 2, 1, 13, 20, 13, 2, 20, 2, 18, 13, 4, 2, 13, 4, 20, 2, 19, 18, 1, 13, 4, 13, 16, 13, 1, 13, 13, 1, 20, 20, 20, 19, 1, 20, 1, 3, 1, 20, 13, 1, 2, 2, 4, 20, 4, 20, 18, 4, 18, 20, 13, 7, 20, 16, 1, 20, 20, 2, 10, 2, 13, 1, 1, 1, 1, 1, 2, 2, 20, 20, 8, 3, 13, 15, 15, 2, 1, 14, 3, 1, 2, 20, 20, 2, 1, 2, 13, 1, 1, 1, 2, 1, 20, 2, 3, 13, 1, 2, 15, 2, 2, 1, 18, 20, 20, 20, 20, 20, 2, 1, 10, 2, 1, 13, 1, 18, 5, 1, 2, 3, 2, 15)
dat$p5 <- factor(p5, levels=1:20, labels=c("Guillermo Anaya, PAN", "Miguel A. Riquelme,PRI", "Mary T. Guajardo, PRD", "José A. Pérez, PT", "Miguel A. Riquelme, PVEM", "Guillermo Anaya, UDC", "Miguel A. Riquelme, PANAL", "Miguel A. Riquelme, PSI", "Guillermo Anaya, PPC", "Miguel A. Riquelme, Partido Jóven", "Miguel A. Riquelme, PRC", "Miguel A. Riquelme, PCP", "Armando Guadiana, Morena", "Guillermo Anaya, Encuentro Social", "Javier Guerrero, Independiente", "Luis Horacio Salinas, Independiente", "No registrado", "Nulo", "Ninguno", "NS/NC"))
rm(p5)

###############################
## fix dichot vote intention ##
###############################
p8 <- c(2, 3, 1, 4, 1, 1, 1, 4, 2, 4, 4, 1, 2, 4, 4, 1, 4, 2, 4, 2, 1, 2, 1, 1, 1, 1, 3, 1, 4, 1, 4, 1, 4, 4, 3, 4, 1, 1, 1, 3, 2, 3, 1, 1, 3, 1, 4, 1, 3, 4, 1, 2, 1, 1, 2, 1, 3, 2, 1, 3, 1, 4, 1, 2, 3, 1, 2, 3, 2, 2, 2, 3, 2, 3, 3, 1, 2, 3, 2, 3, 3, 2, 2, 3, 3, 4, 4, 3, 2, 3, 3, 1, 1, 1, 3, 2, 2, 1, 1, 2, 2, 1, 4, 3, 3, 3, 2, 1, 3, 1, 1, 1, 2, 1, 3, 4, 1, 1, 2, 3, 3, 2, 2, 1, 2, 1, 4, 2, 2, 1, 1, 4, 1, 4, 2, 3, 1, 2, 1, 1, 1, 1, 2, 1, 2, 4, 4, 4, 4, 3, 4, 2, 1, 3, 1, 1, 2, 2, 2, 4, 2, 1, 1, 3, 3, 3, 2, 2, 1, 3, 1, 1, 2, 3, 1, 4, 3, 3, 1, 1, 3, 3, 2, 1, 3, 1, 2, 1, 2, 2, 1, 2, 4, 4, 1, 1, 1, 4, 3, 2, 3, 1, 2, 2, 4, 1, 1, 3, 2, 3, 3, 1, 3, 3, 2, 1, 3, 4, 1, 3, 1, 3, 1, 1, 1, 4, 3, 3, 2, 3, 2, 1, 3, 1, 2, 3, 3, 1, 1, 1, 3, 1, 4, 1, 1, 1, 2, 2, 1, 2, 1, 1, 1, 3, 1, 3, 1, 2, 1, 3, 3, 1, 1, 4, 1, 4, 3, 3, 2, 1, 3, 1, 2, 2, 2, 1, 3, 1, 1, 2, 2, 1, 3, 1, 1, 3, 3, 1, 2, 1, 1, 2, 2, 1, 1, 3, 2, 3, 3, 4, 2, 2, 2, 1, 1, 3, 3, 3, 3, 2, 2, 3, 1, 1, 3, 4, 3, 2, 3, 2, 2, 1, 3, 2, 3, 3, 1, 3, 3, 2, 2, 3, 2, 3, 3, 1, 1, 1, 3, 2, 3, 3, 3, 1, 2, 2, 2, 3, 3, 3, 2, 3, 3, 2, 3, 2, 1, 3, 4, 3, 1, 2, 4, 1, 3, 2, 2, 3, 1, 1, 3, 1, 3, 2, 2, 3, 3, 2, 2, 1, 4, 1, 3, 2, 2, 3, 2, 1, 1, 2, 4, 2, 2, 1, 2, 1, 2, 1, 2, 2, 2, 4, 2, 2, 1, 3, 3, 3, 1, 1, 4, 2, 4, 1, 2, 1, 3, 1, 1, 3, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 1, 3, 3, 3, 3, 2, 3, 3, 3, 1, 1, 3, 2, 3, 1, 2, 1, 2, 3, 4, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 3, 2, 1, 3, 2, 1, 2, 3, 3, 2, 1, 2, 2, 2, 2, 2, 1, 3, 1, 3, 3, 1, 2, 1, 1, 2, 2, 2, 1, 2, 1, 2, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 1, 1, 3, 2, 1, 2, 2, 3, 4, 2, 3, 1, 2, 2, 2, 1, 3, 2, 2, 2, 1, 3, 2, 3, 1, 1, 2, 3, 3, 2, 3, 1, 2, 1, 3, 3, 2, 2, 4, 3, 1, 3, 2, 3, 1, 1, 2, 1, 3, 1, 2, 3, 1, 2, 3, 3, 2, 3, 1, 3, 2, 2, 2, 2, 1, 2, 4, 1, 1, 2, 1, 2, 1, 1, 2, 3, 1, 2, 1, 2, 3, 3, 3, 4, 2, 2, 1, 1, 2, 3, 2, 3, 2, 3, 3, 1, 1, 2, 3, 1, 1, 1, 2, 2, 3, 1, 2, 2, 3, 2, 4, 1, 3, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 3, 1, 4, 4, 3, 2, 2, 2, 1, 1, 3, 3, 4, 4, 1, 3, 2, 2, 4, 4, 3, 3, 2, 3, 1, 3, 1, 2, 2, 1, 2, 2, 4, 2, 3, 1, 3, 2, 1, 4, 3, 2, 4, 3, 1, 3, 1, 2, 1, 1, 4, 1, 3, 3, 1, 3, 2, 2, 1, 1, 1, 1, 2, 1, 3, 2, 1, 1, 1, 1, 3, 2, 2, 3, 1, 2, 1, 2, 4, 1, 3, 1, 3, 2, 1, 3, 1, 2, 2, 2, 3, 3, 2, 2, 1, 2, 1, 1, 1, 1, 3, 4, 1, 1, 3, 1, 3, 1, 3, 2, 4, 3, 1, 2, 2, 2, 3, 2, 4, 4, 4, 3, 1, 1, 1, 1, 3, 3, 1, 3, 2, 1, 2, 1, 1, 1, 1, 2, 1, 1, 2, 3, 2, 3, 2, 3, 3, 2, 1, 3, 2, 2, 1, 1, 3, 3, 3, 1, 2, 2, 1, 4, 2, 3, 2, 3, 2, 4, 3, 2, 1, 2, 4, 1, 1, 2, 2, 3, 1, 2, 2, 1, 1, 3, 3, 1, 2, 2, 3, 2, 3, 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 2, 3, 2, 3, 1, 2, 3, 2, 1, 1, 3, 2, 1, 1, 4, 2, 2, 3, 2, 3, 3, 3, 1, 3, 3, 2, 2, 3, 2, 2, 1, 4, 1, 1, 3, 2, 3, 1, 2, 3, 3, 3, 2, 1, 2, 2, 2, 1, 1, 2, 2, 1, 2, 4, 3, 2, 1, 3, 3, 1, 2, 4, 2, 2, 1, 2, 2, 3, 3, 3, 2, 3, 3, 1, 1, 3, 3, 3, 1, 1, 3, 3, 1, 1, 3, 3, 3, 1, 3, 1, 2, 2, 4, 3, 1, 4, 2, 3, 2, 1, 2, 3, 1, 4, 3, 3, 2, 3, 3, 1, 3, 3, 2, 2, 2, 1, 1, 2, 4, 4, 1, 2, 2, 3, 3, 2, 1, 2, 3, 3, 2, 1, 1, 1, 1, 2, 4, 4, 2, 1, 4, 2, 1, 4, 1, 2, 1, 2, 2, 3, 2, 1, 2, 3, 2, 1, 1, 1, 4, 3, 3, 1, 3, 2, 2, 1, 2, 1, 2, 1, 2, 2, 1, 1, 3, 2, 1)
dat$p8 <- factor(p8, levels=1:4, labels=c("Guillermo Anaya del PAN-UDC-PPC-Encuentro Social", "Miguel Ángel Riquelme del PRI-PVEM-PANAL- PSI-Partido Joven- PRC-PCP", "Ninguno", "NS/NC"))
rm(p8)


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
table(as.numeric(dat$p5))

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


library(car)
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
linearHypothesis(model1, "dconservadoJavier = dperdidoJavier")
model2 <- glm(dconoceLily      ~  dconservadoLily                          + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model2)
model3 <- glm(dconoceGina      ~  dconservadoGina                          + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model3)
model4 <- glm(dconoceAnaIsabel ~  dconservadoAnaIsabel + dperdidoAnaIsabel + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri          , data = dat, family = "binomial")
summary(model4)
linearHypothesis(model4, "dconservadoAnaIsabel = dperdidoAnaIsabel")
model5 <- glm(dconoceSonia     ~  dconservadoSonia                         + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model5)
model6 <- glm(dconoceLencho    ~  dconservadoLencho    + dperdidoLencho    + dhaHecho + dinteresaPol + dsmartPh + dpan + dpri + dmorena, data = dat, family = "binomial")
summary(model6)
linearHypothesis(model6, "dconservadoLencho = dperdidoLencho")
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



#########################
## q-by-q descriptives ##
#########################
source("~/Dropbox/data/useful-functions/table-abs-rel-together.r") # imports function tab.ar
mytab <- function(x, rd=0, rl="no"){
    if (rl=="no")  y <-       table(x, useNA="ifany")
    if (rl=="yes") y <- round(table(x, useNA="ifany") * 100 / length(x), digits=rd)
    return(y)
}

# edad by 10-yr groupings
dat$edad10 <- cut(dat$Edad, breaks=c(18,28,38,48,58,68,Inf), include.lowest = FALSE, right=FALSE)

colnames(dat)

options(width=90)
#with(dat, summary(Folio))
with(dat, mytab(Mun, rl="yes", rd=2)) # rel only
with(dat, tab.ar(LocalidadM))
with(dat, mytab(Secc, rl="yes", rd=1)) # rel only
with(dat, tab.ar(Dtto)) # congressional district
with(dat, tab.ar(disn)) # state assembly district
with(dat, tab.ar(Filtro))
with(dat, tab.ar(Sexo))
with(dat, tab.ar(edad10)) # grouped
with(dat, mytab(p1, rl="yes", rd=1)) # rel only
with(dat, tab.ar(p2,1))
with(dat, tab.ar(p3))
with(dat, tab.ar(p4,1))
with(dat, tab.ar(p5,1))
with(dat, tab.ar(p6))
with(dat, tab.ar(p7a))
with(dat, tab.ar(p7b))
with(dat, tab.ar(p7c))
with(dat, tab.ar(p7d))
with(dat, tab.ar(p7e))
with(dat, tab.ar(p7f))
with(dat, tab.ar(p7g))
with(dat, tab.ar(p8))
with(dat, tab.ar(p9))
with(dat, tab.ar(p10))
with(dat, tab.ar(p11))
with(dat, tab.ar(p12))
with(dat, tab.ar(p13))
with(dat, tab.ar(p14))
with(dat, tab.ar(p15))
with(dat, tab.ar(p16))
with(dat, tab.ar(p17a))
with(dat, tab.ar(p17b))
with(dat, tab.ar(p17c))
with(dat, tab.ar(p18))
with(dat, tab.ar(p19))
with(dat, tab.ar(p20))
with(dat, tab.ar(p21))
with(dat, tab.ar(p22))
with(dat, tab.ar(p23))
with(dat, tab.ar(p24))
with(dat, tab.ar(p25a))
with(dat, tab.ar(p25b))
with(dat, tab.ar(p25c))
with(dat, tab.ar(p25d))
with(dat, tab.ar(p25e))
with(dat, tab.ar(p25f))
with(dat, tab.ar(p25g))
with(dat, tab.ar(p25h))
with(dat, tab.ar(p25i))
with(dat, tab.ar(p26a))
with(dat, tab.ar(p26b))
with(dat, tab.ar(p26c))
with(dat, tab.ar(p27a))
with(dat, tab.ar(p27b))
with(dat, tab.ar(p27c))
with(dat, tab.ar(p27d))
with(dat, tab.ar(p27e))
with(dat, tab.ar(p27f))
with(dat, tab.ar(p28))
with(dat, tab.ar(p29))
with(dat, tab.ar(p30))
with(dat, tab.ar(p31a))
with(dat, tab.ar(p31b))
with(dat, tab.ar(p31c))
with(dat, tab.ar(p32a))
with(dat, tab.ar(p32b))
with(dat, tab.ar(p35))
with(dat, tab.ar(pA))
with(dat, tab.ar(pB))
with(dat, tab.ar(pC))
with(dat, tab.ar(pD))
#with(dat, tab.ar(Ponderador))


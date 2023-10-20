require(dplyr)
require(data.table)
####################################################################
#1.AWS
#기온
aws_기온 <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID, AVG_TA, MAX_TA, MIN_TA 
  FROM  DB_AWS_TA_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")


write.csv(aws_기온, "export/aws_기온.csv", row.names = FALSE)

#바람
aws_바람 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, AVG_WS, MAX_WS, MAX_WD
                     FROM  DB_AWS_WIND_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(aws_바람, "export/aws_바람.csv", row.names = FALSE)


#습도
aws_습도 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, AVG_RHM, MIN_RHM
                     FROM  DB_AWS_RHM_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(aws_습도, "export/aws_습도.csv", row.names = FALSE)


#일조일사
aws_일조_일사 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, SUM_SS_HR, SSRATE
                     FROM  DB_AWS_ICSR_SS_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(aws_일조_일사, "export/aws_일조_일사.csv", row.names = FALSE)



#지면온도 DB_AWS_TS_DD
aws_지면온도 <- dbGetQuery(conn, 
                        "SELECT TMA, STN_ID, AVG_TS, MAX_TS, MIN_TS
                     FROM  DB_AWS_TS_DD
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(aws_지면온도, "export/aws_지면온도.csv", row.names = FALSE)


#초상온도 DB_AWS_LWT_TG_DD
aws_초상온도 <- dbGetQuery(conn, 
                       "SELECT TMA, STN_ID, AVG_MIN_TG, MIN_TG
                     FROM  DB_AWS_LWT_TG_DD
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(aws_초상온도, "export/aws_초상온도.csv", row.names = FALSE)




#지중온도 
AWS_지중온도 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID,  AVG_CM5_TE, MAX_CM5_TE, MIN_CM5_TE
                     FROM  DB_AWS_TE_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(AWS_지중온도, "export/aws_지중.csv", row.names = FALSE)

#강수
AWS_강수 <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID, SUM_RN
  FROM  DB_AWS_RN_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(AWS_강수, "export/aws_강수.csv", row.names = FALSE)

#기압
AWS_기압 <-
 dbGetQuery(conn, 
  "SELECT TMA, STN_ID, AVG_PA, MAX_PA, MIN_PA ,AVG_PS, MAX_PS, MIN_PS 
  FROM  DB_AWS_PRSR_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(AWS_기압, "export/aws_기압.csv", row.names = FALSE)


#지점

방재기상관측_AWS_지점 <- fread("Readme/AreaInfo/방재기상관측(AWS)지점.csv")
종관기상관측_ASOS_지점 <- fread("Readme/AreaInfo/종관기상관측(ASOS)지점.csv")
write.csv(방재기상관측_AWS_지점, "export/방재기상관측_AWS_지점.csv", row.names = FALSE)
write.csv(종관기상관측_ASOS_지점, "export/종관기상관측_ASOS_지점.csv", row.names = FALSE)


#############################################################################
#2. ASOS
#습도
SFC_습도 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, AVG_RHM, MIN_RHM
                     FROM  DB_SFC_RHM_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_습도, "export/SFC_습도.csv", row.names = FALSE)

#증발량
SFC_증발량 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, SUM_SML_EV, SUM_LRG_EV
                     FROM  DB_SFC_RHM_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_증발량, "export/SFC_증발량.csv", row.names = FALSE)


#일조일사
SFC_일조_일사 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, SUM_SS_HR, SSRATE
                     FROM  DB_SFC_ICSR_SS_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_일조_일사, "export/SFC_일조_일사.csv", row.names = FALSE)

#적설
SFC_적설 <- dbGetQuery(conn, 
                     "SELECT TMA, STN_ID, DD_MES, DD_MEFS
                     FROM  DB_SFC_DSNW_DD 
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_적설, "export/SFC_일조_일사.csv", row.names = FALSE)


#지면온도 DB_SFC_TS_DD
SFC_지면온도 <- dbGetQuery(conn, 
                        "SELECT TMA, STN_ID, AVG_TS, MAX_TS, MIN_TS
                     FROM  DB_SFC_TS_DD
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_지면온도, "export/SFC_지면온도.csv", row.names = FALSE)


#초상온도 DB_SFC_LWT_TG_DD
SFC_초상온도 <- dbGetQuery(conn, 
                       "SELECT TMA, STN_ID, AVG_MIN_TG, MIN_TG
                     FROM  DB_SFC_LWT_TG_DD
                     where tma regexp '2016'
                     or tma regexp '2017'
                     or tma regexp '2018'
                     or tma regexp '2019'
                     or tma regexp '2020'
                     or tma regexp '2021'
                     or tma regexp '2022'
                     or tma regexp '2023'")

write.csv(SFC_초상온도, "export/SFC_초상온도.csv", row.names = FALSE)

SFC_TD_DD <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID,  AVG_TD, MAX_TD, MIN_TD
  FROM  DB_SFC_TD_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(SFC_TD_DD, "export/SFC_이슬점온도.csv", row.names = FALSE)

SFC_TE <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID,  AVG_CM5_TE, MAX_CM5_TE, MIN_CM5_TE,
  FROM  DB_SFC_TE_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(SFC_TE, "export/SFC_지중.csv", row.names = FALSE)

SFC_RN <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID, SUM_RN, 
  FROM  DB_SFC_RN_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(SFC_RN, "export/SFC_강수.csv", row.names = FALSE)

SFC_PSPR <- dbGetQuery(conn, 
  "SELECT TMA, STN_ID, AVG_PA, MAX_PA, MIN_PA ,AVG_PS, MAX_PS, MIN_PS 
  FROM  DB_SFC_PRSR_DD 
  where tma regexp '2016'
  or tma regexp '2017'
  or tma regexp '2018'
  or tma regexp '2019'
  or tma regexp '2020'
  or tma regexp '2021'
  or tma regexp '2022'
  or tma regexp '2023'")

write.csv(SFC_PSPR, "export/SFC_기압.csv", row.names = FALSE)
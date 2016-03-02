SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00300N_2] (@BS int, @CUSTNMBR char(15), @ADRSCODE char(15), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 WHERE ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00300N_2] TO [DYNGRP]
GO

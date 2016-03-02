SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00300F_1] (@SERLNMBR_RS char(21), @ITEMNMBR_RS char(31), @SERLNMBR_RE char(21), @ITEMNMBR_RE char(31)) AS  set nocount on IF @SERLNMBR_RS IS NULL BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 ORDER BY SERLNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @SERLNMBR_RS = @SERLNMBR_RE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 WHERE SERLNMBR = @SERLNMBR_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, Version, SRLSTAT, INSTDTE, CUSTNMBR, ADRSCODE, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, LSTPMDTE, LSTSRVDTE, TECHID, TECHID2, OFFID, SVCAREA, TIMEZONE, WARRCDE, WARREND, WARRSTART, SLRWARR, SLRWEND, SLRWSTART, NOTEINDX, MTTR, MTBF, MTBI, Last_Calc_Date, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, MTBFs_1, MTBFs_2, MTBFs_3, MTBFs_4, MTBFs_5, Meter_Deltas_1, Meter_Deltas_2, Meter_Deltas_3, Meter_Deltas_4, Meter_Deltas_5, SVC_PM_Date, SVC_PM_Day, VENDORID, ADDRESS3, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Serial_ID, QUANTITY, SVC_Asset_Tag, Shipped_Date, SVC_Register_Date, SOPNUMBE, DEX_ROW_ID FROM .SVC00300 WHERE SERLNMBR BETWEEN @SERLNMBR_RS AND @SERLNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00300F_1] TO [DYNGRP]
GO

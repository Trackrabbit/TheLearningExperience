SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00902N_2] (@BS int, @OFFNAME char(21), @DEX_ROW_ID int, @OFFNAME_RS char(21), @OFFNAME_RE char(21)) AS  set nocount on IF @OFFNAME_RS IS NULL BEGIN SELECT TOP 25  OFFID, OFFNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, PHONE1, FAXNUMBR, TECHEMAIL, MANAGER, TIMEZONE, LOCNCODE, LOCCODBK, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, Return_Location_Code, NOTEINDX, ADDRESS3, DEX_ROW_ID FROM .SVC00902 WHERE ( OFFNAME = @OFFNAME AND DEX_ROW_ID > @DEX_ROW_ID OR OFFNAME > @OFFNAME ) ORDER BY OFFNAME ASC, DEX_ROW_ID ASC END ELSE IF @OFFNAME_RS = @OFFNAME_RE BEGIN SELECT TOP 25  OFFID, OFFNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, PHONE1, FAXNUMBR, TECHEMAIL, MANAGER, TIMEZONE, LOCNCODE, LOCCODBK, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, Return_Location_Code, NOTEINDX, ADDRESS3, DEX_ROW_ID FROM .SVC00902 WHERE OFFNAME = @OFFNAME_RS AND ( OFFNAME = @OFFNAME AND DEX_ROW_ID > @DEX_ROW_ID OR OFFNAME > @OFFNAME ) ORDER BY OFFNAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  OFFID, OFFNAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, CNTCPRSN, PHONE1, FAXNUMBR, TECHEMAIL, MANAGER, TIMEZONE, LOCNCODE, LOCCODBK, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, Return_Location_Code, NOTEINDX, ADDRESS3, DEX_ROW_ID FROM .SVC00902 WHERE OFFNAME BETWEEN @OFFNAME_RS AND @OFFNAME_RE AND ( OFFNAME = @OFFNAME AND DEX_ROW_ID > @DEX_ROW_ID OR OFFNAME > @OFFNAME ) ORDER BY OFFNAME ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00902N_2] TO [DYNGRP]
GO

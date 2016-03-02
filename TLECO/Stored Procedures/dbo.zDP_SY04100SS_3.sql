SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04100SS_3] (@STATE char(29), @CITY char(35), @BANKID char(15)) AS  set nocount on SELECT TOP 1  BANKID, BANKNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, TRNSTNBR, BNKBRNCH, NOTEINDX, DDTRANUM, DEX_ROW_ID FROM .SY04100 WHERE STATE = @STATE AND CITY = @CITY AND BANKID = @BANKID ORDER BY STATE ASC, CITY ASC, BANKID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04100SS_3] TO [DYNGRP]
GO
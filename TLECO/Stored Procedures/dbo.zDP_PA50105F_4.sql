SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50105F_4] (@USERID_RS char(15), @MODULEID_RS smallint, @DOCTYPE_RS smallint, @DOCDATE_RS datetime, @USERID_RE char(15), @MODULEID_RE smallint, @DOCTYPE_RE smallint, @DOCDATE_RE datetime) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, DOCTYPE, DOCNUMBR, VCHRNMBR, MODULEID, DOCDATE, DUEDATE, CustVenID, CURTRXAM, ORCTRXAM, CURNCYID, VOIDSTTS, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, TAXDTLID, GSTDSAMT, PPSAMDED, DEX_ROW_ID FROM .PA50105 ORDER BY USERID ASC, MODULEID ASC, DOCTYPE ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, DOCTYPE, DOCNUMBR, VCHRNMBR, MODULEID, DOCDATE, DUEDATE, CustVenID, CURTRXAM, ORCTRXAM, CURNCYID, VOIDSTTS, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, TAXDTLID, GSTDSAMT, PPSAMDED, DEX_ROW_ID FROM .PA50105 WHERE USERID = @USERID_RS AND MODULEID BETWEEN @MODULEID_RS AND @MODULEID_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY USERID ASC, MODULEID ASC, DOCTYPE ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, DOCTYPE, DOCNUMBR, VCHRNMBR, MODULEID, DOCDATE, DUEDATE, CustVenID, CURTRXAM, ORCTRXAM, CURNCYID, VOIDSTTS, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, TAXDTLID, GSTDSAMT, PPSAMDED, DEX_ROW_ID FROM .PA50105 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MODULEID BETWEEN @MODULEID_RS AND @MODULEID_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY USERID ASC, MODULEID ASC, DOCTYPE ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50105F_4] TO [DYNGRP]
GO

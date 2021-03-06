SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50401SS_1] (@ITEMNMBR char(31), @EPITMTYP char(1), @STRTDATE datetime, @ENDDATE datetime, @PRCSHID char(15), @BASEUOFM char(9)) AS  set nocount on SELECT TOP 1  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND BASEUOFM = @BASEUOFM ORDER BY ITEMNMBR ASC, EPITMTYP ASC, STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, BASEUOFM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50401SS_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50401SS_2] (@STRTDATE datetime, @ENDDATE datetime, @ITEMNMBR char(31), @EPITMTYP char(1), @PRCSHID char(15), @BASEUOFM char(9)) AS  set nocount on SELECT TOP 1  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID = @PRCSHID AND BASEUOFM = @BASEUOFM ORDER BY STRTDATE ASC, ENDDATE ASC, ITEMNMBR ASC, EPITMTYP ASC, PRCSHID ASC, BASEUOFM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50401SS_2] TO [DYNGRP]
GO
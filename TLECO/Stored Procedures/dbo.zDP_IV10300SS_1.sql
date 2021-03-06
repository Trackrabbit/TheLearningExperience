SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10300SS_1] (@STCKCNTID char(15)) AS  set nocount on SELECT TOP 1  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 WHERE STCKCNTID = @STCKCNTID ORDER BY STCKCNTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10300SS_1] TO [DYNGRP]
GO

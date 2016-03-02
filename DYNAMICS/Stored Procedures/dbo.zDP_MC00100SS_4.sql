SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC00100SS_4] (@EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime) AS  set nocount on SELECT TOP 1  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE = @EXCHDATE ORDER BY EXGTBLID ASC, XCHGRATE ASC, EXCHDATE DESC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00100SS_4] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10300F_1] (@STCKCNTID_RS char(15), @STCKCNTID_RE char(15)) AS  set nocount on IF @STCKCNTID_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 ORDER BY STCKCNTID ASC END ELSE IF @STCKCNTID_RS = @STCKCNTID_RE BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 WHERE STCKCNTID = @STCKCNTID_RS ORDER BY STCKCNTID ASC END ELSE BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 WHERE STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE ORDER BY STCKCNTID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10300F_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10300L_2] (@STCKCNTDSCRPTN_RS char(31), @STCKCNTID_RS char(15), @STCKCNTDSCRPTN_RE char(31), @STCKCNTID_RE char(15)) AS  set nocount on IF @STCKCNTDSCRPTN_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 ORDER BY STCKCNTDSCRPTN DESC, STCKCNTID DESC END ELSE IF @STCKCNTDSCRPTN_RS = @STCKCNTDSCRPTN_RE BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 WHERE STCKCNTDSCRPTN = @STCKCNTDSCRPTN_RS AND STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE ORDER BY STCKCNTDSCRPTN DESC, STCKCNTID DESC END ELSE BEGIN SELECT TOP 25  STCKCNTID, STCKCNTDSCRPTN, STCKCNTSTTS, DOCDATE, GLPOSTDT, NOTEINDX, CNTSTRTDT, CNTSTRTTM, ATPSTVRNC, RSSTCKCNT, DFLTCNTDT, DFLTCNTTM, LSTCNTDT, ENABLEMULTIBIN, LOCNCODE, DEX_ROW_ID FROM .IV10300 WHERE STCKCNTDSCRPTN BETWEEN @STCKCNTDSCRPTN_RS AND @STCKCNTDSCRPTN_RE AND STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE ORDER BY STCKCNTDSCRPTN DESC, STCKCNTID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10300L_2] TO [DYNGRP]
GO

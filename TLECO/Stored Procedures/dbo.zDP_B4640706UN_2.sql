SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640706UN_2] (@BS int, @LOCNCODE char(11), @BSSI_EasementID char(25), @LOCNCODE_RS char(11), @BSSI_EasementID_RS char(25), @LOCNCODE_RE char(11), @BSSI_EasementID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_EasementID, NOTEINDX, DEX_ROW_ID FROM .B4640706 WHERE ( LOCNCODE = @LOCNCODE AND BSSI_EasementID > @BSSI_EasementID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, BSSI_EasementID ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_EasementID, NOTEINDX, DEX_ROW_ID FROM .B4640706 WHERE LOCNCODE = @LOCNCODE_RS AND BSSI_EasementID BETWEEN @BSSI_EasementID_RS AND @BSSI_EasementID_RE AND ( LOCNCODE = @LOCNCODE AND BSSI_EasementID > @BSSI_EasementID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, BSSI_EasementID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_EasementID, NOTEINDX, DEX_ROW_ID FROM .B4640706 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_EasementID BETWEEN @BSSI_EasementID_RS AND @BSSI_EasementID_RE AND ( LOCNCODE = @LOCNCODE AND BSSI_EasementID > @BSSI_EasementID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, BSSI_EasementID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640706UN_2] TO [DYNGRP]
GO
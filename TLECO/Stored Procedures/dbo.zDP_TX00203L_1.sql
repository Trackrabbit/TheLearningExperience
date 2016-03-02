SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00203L_1] (@TAXDTLID_RS char(15), @HISTTYPE_RS smallint, @YEAR1_RS smallint, @PERIODID_RS smallint, @TAXDTLID_RE char(15), @HISTTYPE_RE smallint, @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @TAXDTLID_RS IS NULL BEGIN SELECT TOP 25  HISTTYPE, YEAR1, PERIODID, TAXDTLID, TDTSLPCH, TXDTTXSP, TXDTSPTX, DEX_ROW_ID FROM .TX00203 ORDER BY TAXDTLID DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END ELSE IF @TAXDTLID_RS = @TAXDTLID_RE BEGIN SELECT TOP 25  HISTTYPE, YEAR1, PERIODID, TAXDTLID, TDTSLPCH, TXDTTXSP, TXDTSPTX, DEX_ROW_ID FROM .TX00203 WHERE TAXDTLID = @TAXDTLID_RS AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY TAXDTLID DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END ELSE BEGIN SELECT TOP 25  HISTTYPE, YEAR1, PERIODID, TAXDTLID, TDTSLPCH, TXDTTXSP, TXDTSPTX, DEX_ROW_ID FROM .TX00203 WHERE TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND HISTTYPE BETWEEN @HISTTYPE_RS AND @HISTTYPE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY TAXDTLID DESC, HISTTYPE DESC, YEAR1 DESC, PERIODID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00203L_1] TO [DYNGRP]
GO
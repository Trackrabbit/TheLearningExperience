SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE021030F_1] (@EMPID_I_RS char(15), @INDEX1_RS smallint, @IINDEX_I_RS smallint, @EMPID_I_RE char(15), @INDEX1_RE smallint, @IINDEX_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, INDEX1, IINDEX_I, IDATE_I, IBENEFITAMOUNT_I, CHECK1_I, DSCRIPTN, DEX_ROW_ID FROM .BE021030 ORDER BY EMPID_I ASC, INDEX1 ASC, IINDEX_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, INDEX1, IINDEX_I, IDATE_I, IBENEFITAMOUNT_I, CHECK1_I, DSCRIPTN, DEX_ROW_ID FROM .BE021030 WHERE EMPID_I = @EMPID_I_RS AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND IINDEX_I BETWEEN @IINDEX_I_RS AND @IINDEX_I_RE ORDER BY EMPID_I ASC, INDEX1 ASC, IINDEX_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, INDEX1, IINDEX_I, IDATE_I, IBENEFITAMOUNT_I, CHECK1_I, DSCRIPTN, DEX_ROW_ID FROM .BE021030 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND IINDEX_I BETWEEN @IINDEX_I_RS AND @IINDEX_I_RE ORDER BY EMPID_I ASC, INDEX1 ASC, IINDEX_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE021030F_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00202F_1] (@EMPLOYID_RS char(15), @Time_on_Behalf_Code_RS char(15), @EMPLCLAS_RS char(15), @EMPLOYID_RE char(15), @Time_on_Behalf_Code_RE char(15), @EMPLCLAS_RE char(15)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR00202 ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, EMPLCLAS ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR00202 WHERE EMPLOYID = @EMPLOYID_RS AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, EMPLCLAS ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR00202 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, EMPLCLAS ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00202F_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00202SS_1] (@EMPLOYID char(15), @Time_on_Behalf_Code char(15), @EMPLCLAS char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, Time_on_Behalf_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR00202 WHERE EMPLOYID = @EMPLOYID AND Time_on_Behalf_Code = @Time_on_Behalf_Code AND EMPLCLAS = @EMPLCLAS ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, EMPLCLAS ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00202SS_1] TO [DYNGRP]
GO

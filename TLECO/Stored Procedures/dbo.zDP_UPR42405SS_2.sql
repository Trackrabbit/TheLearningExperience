SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42405SS_2] (@EMPLCLAS char(15), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE EMPLCLAS = @EMPLCLAS AND Restriction_Code = @Restriction_Code ORDER BY EMPLCLAS ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42405SS_2] TO [DYNGRP]
GO

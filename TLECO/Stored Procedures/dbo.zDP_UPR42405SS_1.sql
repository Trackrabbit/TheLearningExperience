SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42405SS_1] (@Restriction_Code char(15), @EMPLCLAS char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, EMPLCLAS, DEX_ROW_ID FROM .UPR42405 WHERE Restriction_Code = @Restriction_Code AND EMPLCLAS = @EMPLCLAS ORDER BY Restriction_Code ASC, EMPLCLAS ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42405SS_1] TO [DYNGRP]
GO

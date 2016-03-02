SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO40001SS_1] (@CMPANYID smallint) AS  set nocount on SELECT TOP 1  CMPANYID, Commitment_Approval, Track_Commitment, BUDPWRD, Approval_Type, Approval_Variance, Approval_Variance_Type, Variance_Amount, CPOP_Variance_Percentage, Approval_Password, DEX_ROW_ID FROM .CPO40001 WHERE CMPANYID = @CMPANYID ORDER BY CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO40001SS_1] TO [DYNGRP]
GO

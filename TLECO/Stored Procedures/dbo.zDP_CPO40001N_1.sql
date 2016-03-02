SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO40001N_1] (@BS int, @CMPANYID smallint, @CMPANYID_RS smallint, @CMPANYID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, Commitment_Approval, Track_Commitment, BUDPWRD, Approval_Type, Approval_Variance, Approval_Variance_Type, Variance_Amount, CPOP_Variance_Percentage, Approval_Password, DEX_ROW_ID FROM .CPO40001 WHERE ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, Commitment_Approval, Track_Commitment, BUDPWRD, Approval_Type, Approval_Variance, Approval_Variance_Type, Variance_Amount, CPOP_Variance_Percentage, Approval_Password, DEX_ROW_ID FROM .CPO40001 WHERE CMPANYID = @CMPANYID_RS AND ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, Commitment_Approval, Track_Commitment, BUDPWRD, Approval_Type, Approval_Variance, Approval_Variance_Type, Variance_Amount, CPOP_Variance_Percentage, Approval_Password, DEX_ROW_ID FROM .CPO40001 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO40001N_1] TO [DYNGRP]
GO

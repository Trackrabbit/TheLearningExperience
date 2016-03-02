SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO40001SI] (@CMPANYID smallint, @Commitment_Approval tinyint, @Track_Commitment tinyint, @BUDPWRD char(15), @Approval_Type smallint, @Approval_Variance tinyint, @Approval_Variance_Type smallint, @Variance_Amount numeric(19,5), @CPOP_Variance_Percentage numeric(19,5), @Approval_Password char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CPO40001 (CMPANYID, Commitment_Approval, Track_Commitment, BUDPWRD, Approval_Type, Approval_Variance, Approval_Variance_Type, Variance_Amount, CPOP_Variance_Percentage, Approval_Password) VALUES ( @CMPANYID, @Commitment_Approval, @Track_Commitment, @BUDPWRD, @Approval_Type, @Approval_Variance, @Approval_Variance_Type, @Variance_Amount, @CPOP_Variance_Percentage, @Approval_Password) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO40001SI] TO [DYNGRP]
GO

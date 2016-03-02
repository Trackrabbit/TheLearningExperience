SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Clear_Contract_Liability]  @CONSTS smallint,  @CONTNBR char(11) AS BEGIN TRANSACTION UPDATE SVC00601  SET  Liabiltiy_Reduction = 0,  Liability_Amount = 0.0,  Orig_Liability_Amount = 0.0,  Total_Liability_Amount = 0.0,  OrigTotLiabilityAmount = 0.0,  Liability_Months = 0,  Next_Liability_Date = 'Jan 1 1900',  SVC_Discount_Next = 0.0,  OrigDiscountNext = 0.0,  SVC_Discount_Remaining = 0.0,  OrigDiscountRemaining = 0.0 WHERE (SVC00601.CONSTS = @CONSTS AND SVC00601.CONTNBR = @CONTNBR AND   SVC00601.Contract_Line_Status <> 'C') if @@error <> 0 goto baderror COMMIT TRANSACTION return baderror:  rollback transaction  return @@error    
GO
GRANT EXECUTE ON  [dbo].[SVC_Clear_Contract_Liability] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[vatPostDistributions]  @I_sSeries smallint = NULL,  @I_sDocType smallint = NULL,  @I_cDocNum char(21) = NULL,  @I_nRecTRXSeq numeric(19,5) = NULL,  @I_dTaxDate datetime = NULL,  @I_dPostingDate datetime = NULL,  @I_sFiscYear smallint = NULL,  @I_sFiscPeriod smallint = NULL,  @I_tPosting tinyint  = NULL,  @O_iErrorState int  = NULL output as  declare   @TAX_SALES_TYPE int,  @TRUE    tinyint,  @FALSE tinyint,  @tLoop tinyint,  @tTransaction tinyint,  @iStatus int,  @iError int,  @cTaxDetail char(15),  @mTaxAmt decimal(19,5),  @mTotalAmt decimal(19,5),  @sTaxDtlType smallint  select  @O_iErrorState = 0,  @iStatus = 0  return (@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[vatPostDistributions] TO [DYNGRP]
GO

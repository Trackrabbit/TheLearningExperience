SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Convert_Amount] (  @I_sRateCalcMethod  smallint     = NULL,           @I_sViewMode   smallint     = NULL,           @I_nExchangeRate  numeric(15,7) = NULL,           @I_nDenomExchangeRate numeric(15,7) = NULL,           @I_sMCTrxState   smallint     = NULL,           @I_sDecimalPlaces  smallint     = NULL,           @I_mAmount       numeric(19,5) = NULL,           @O_mCalcAmount   numeric(19,5) = NULL output,   @O_iErrorState          int             = NULL  output    )  as  declare @I_cCurrencyID   char(15),  @I_cIntercompanyID  char(5),  @sFUNCTIONAL   smallint,  @sORIGINATING   smallint select @I_cCurrencyID       = '',  @I_cIntercompanyID   = '',   @sFUNCTIONAL   = 3,  @sORIGINATING  = 4 exec mcCalculateAmount   @I_sRateCalcMethod ,  @I_sViewMode,  @I_nExchangeRate,  @I_nDenomExchangeRate,  @I_cCurrencyID,  @I_sMCTrxState,  @I_sDecimalPlaces ,  @I_cIntercompanyID,  @I_mAmount  ,  @O_mCalcAmount output,   @O_iErrorState output return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Convert_Amount] TO [DYNGRP]
GO

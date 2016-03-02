SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmUpdateExchangeRateInfo]   @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cIntercompanyID char(5)  = NULL,  @I_cRateTypeID char(15) = NULL,  @I_cExchangeTableID char(15) = NULL,  @I_nExchangeRate numeric(15,7) = NULL,  @I_dExchangeDate datetime = NULL,  @I_dTime datetime = NULL,  @I_sRateCalculationMethod smallint = NULL,  @I_dExpirationDate datetime = NULL,  @I_nDenomExchangeRate numeric(15,7) = NULL,  @I_sMCTrxState smallint = NULL,  @O_iErrorState int  = NULL output as  select @O_iErrorState = 0  if @I_cVoucherNumber is NULL or  @I_sControlType is NULL or  @I_cIntercompanyID is NULL or  @I_cRateTypeID is NULL or  @I_cExchangeTableID is NULL or  @I_nExchangeRate is NULL or  @I_dExchangeDate is NULL or  @I_dTime is NULL or  @I_sRateCalculationMethod is NULL or  @I_nDenomExchangeRate is NULL or  @I_sMCTrxState is NULL or  @I_dExpirationDate is NULL begin  select @O_iErrorState = 21013   return end   update   PM10100 set  XCHGRATE = @I_nExchangeRate,  RATETPID = @I_cRateTypeID,   EXGTBLID = @I_cExchangeTableID,   EXCHDATE = @I_dExchangeDate,   TIME1  = @I_dTime,   RTCLCMTD = @I_sRateCalculationMethod,   EXPNDATE = @I_dExpirationDate,  DENXRATE = @I_nDenomExchangeRate,  MCTRXSTT = @I_sMCTrxState where  VCHRNMBR  = @I_cVoucherNumber  and CNTRLTYP  = @I_sControlType and INTERID  = @I_cIntercompanyID   return    
GO
GRANT EXECUTE ON  [dbo].[icpmUpdateExchangeRateInfo] TO [DYNGRP]
GO

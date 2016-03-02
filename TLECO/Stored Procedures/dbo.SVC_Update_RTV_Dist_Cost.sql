SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_RTV_Dist_Cost]  @RTVNumber as char(15),  @RTVLine as numeric(19,5),  @LineType as char(3),  @DistType as smallint,  @Cost numeric (19,2) As declare @SEQNUMBR integer declare @AccountIndex1 integer declare @AccountIndex2 integer,  @OrigCost numeric (19,2) declare @I_sRateCalcMethod  smallint ,           @I_sViewMode   smallint,            @I_nExchangeRate  numeric(15,7),       @I_nDenomExchangeRate numeric(15,7),       @I_sMCTrxState   smallint,            @I_sDecimalPlaces  smallint,            @O_iErrorState          int   select @I_sRateCalcMethod = RATECALC,   @I_sViewMode = 3,            @I_nExchangeRate = XCHGRATE,   @I_nDenomExchangeRate = DENXRATE,   @I_sDecimalPlaces = DECPLACS,   @I_sMCTrxState = MCTRXSTT   from SVC05600 where RTV_Number = @RTVNumber  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @Cost,@OrigCost OUTPUT, @O_iErrorState OUTPUT select @SEQNUMBR = MAX(SEQNUMBR) from SVC05630  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and SVC_Distribution_Type=4 and POSTED = 1  and LINITMTYP = 'I' update SVC05630 set CRDTAMNT = @Cost, ORCRDAMT = @OrigCost  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and POSTED = 1 and LINITMTYP = 'I'  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type=4 and POSTED = 1 update SVC05630 set DEBITAMT = @Cost, ORDBTAMT = @OrigCost  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and POSTED =1 and LINITMTYP = 'I'  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type=5 and POSTED = 1  select @SEQNUMBR = MAX(SEQNUMBR) from SVC05630  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and SVC_Distribution_Type=6 and POSTED = 1  and LINITMTYP = 'I' update SVC05630 set CRDTAMNT = @Cost, ORCRDAMT = @OrigCost  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and POSTED = 1 and LINITMTYP = 'I'  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type=6 and POSTED = 1 update SVC05630 set DEBITAMT = @Cost, ORDBTAMT = @OrigCost  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and POSTED =1  and LINITMTYP ='I'  and SEQNUMBR = @SEQNUMBR and SVC_Distribution_Type=7 and POSTED = 1  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_RTV_Dist_Cost] TO [DYNGRP]
GO
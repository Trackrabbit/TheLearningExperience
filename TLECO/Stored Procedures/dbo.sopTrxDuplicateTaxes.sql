SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[sopTrxDuplicateTaxes]  (@SourceSopType smallint=NULL, @SourceSopNumber char(21)=NULL,   @TargetSopType smallint=NULL, @TargetSopNumber char(21)=NULL,  @iErrorState int=NULL output)  AS  declare @tTransaction tinyint BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @SourceSopType=NULL or @SourceSopNumber=NULL or @TargetSopType=NULL or @TargetSopNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  set nocount on if @@trancount = 0 begin   select @tTransaction = 1   begin transaction  end   INSERT INTO SOP10105  SELECT   SOPTYPE=@TargetSopType,  SOPNUMBE=@TargetSopNumber,  LNITMSEQ,  TAXDTLID,  ACTINDX,  BKOUTTAX,  TXABLETX,  STAXAMNT,  ORSLSTAX,  FRTTXAMT,  ORFRTTAX,  MSCTXAMT,  ORMSCTAX,  TAXDTSLS,  ORTOTSLS,  TDTTXSLS,  ORTXSLS,  TXDTOTTX,  OTTAXPON,  DELETE1,  CURRNIDX,  TRXSORCE  FROM   SOP10105  WHERE   SOPTYPE=@SourceSopType   AND SOPNUMBE = @SourceSopNumber   UPDATE SOP10200   SET   ORTAXAMT = SourceLine.ORTAXAMT,   TAXAMNT = SourceLine.TAXAMNT,  ORBKTSLS = SourceLine.ORBKTSLS,   BKTSLSAM = SourceLine.BKTSLSAM,  OrigBackoutTradeDisc = SourceLine.OrigBackoutTradeDisc,  BackoutTradeDisc = SourceLine.BackoutTradeDisc  FROM   (SELECT   *   FROM   SOP10200 AS SourceLine  WHERE   SourceLine.SOPTYPE=@SourceSopType   AND SourceLine.SOPNUMBE=@SourceSopNumber  ) AS SourceLine  WHERE   SOP10200.SOPTYPE=@TargetSopType   AND SOP10200.SOPNUMBE=@TargetSopNumber   AND SOP10200.LNITMSEQ=SourceLine.LNITMSEQ   AND SOP10200.CMPNTSEQ=SourceLine.CMPNTSEQ  if @tTransaction = 1  begin  commit transaction  end  end   
GO
GRANT EXECUTE ON  [dbo].[sopTrxDuplicateTaxes] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[cmIsReconciledDocument] (  @I_DocType smallint,  @I_sCheckBookID Char(15),  @I_sDocNum Char(21),  @I_sVendorID Char(15),  @I_TrxSource Char(13),  @I_SourcDocNum Char(21)  ) RETURNS int AS BEGIN  DECLARE  @InfoValue int  if @I_DocType = 6 and @I_sCheckBookID<>''  Begin  select @InfoValue = Isnull((select Recond   from CM20200   where CHEKBKID = @I_sCheckBookID   and CMTrxNum = @I_sDocNum   and CMTrxType in(3,4)   and CMLinkID = @I_sVendorID   and AUDITTRAIL = @I_TrxSource  and SRCDOCTYP = @I_DocType  and SRCDOCNUM = @I_SourcDocNum),0)  end   else  select @InfoValue = 0  return @InfoValue END   
GO
GRANT EXECUTE ON  [dbo].[cmIsReconciledDocument] TO [DYNGRP]
GO

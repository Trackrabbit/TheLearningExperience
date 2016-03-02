SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagUPRComputerTrx_Delete] @iTrxNumber   int = 0  AS begin  declare @nHdrId int  select @nHdrId = isnull(aaSubLedgerHdrID,0)  from AAG20000   where SERIES = 6 and  DOCTYPE = 1 and  DOCNUMBR =  ltrim(rtrim(@iTrxNumber))  if @nHdrId > 0   begin  delete from AAG20003 where aaSubLedgerHdrID = @nHdrId  delete from AAG20002 where aaSubLedgerHdrID = @nHdrId  delete from AAG20001 where aaSubLedgerHdrID = @nHdrId  delete from AAG20000 where aaSubLedgerHdrID = @nHdrId  end  end    
GO
GRANT EXECUTE ON  [dbo].[aagUPRComputerTrx_Delete] TO [DYNGRP]
GO

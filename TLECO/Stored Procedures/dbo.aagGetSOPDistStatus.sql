SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[aagGetSOPDistStatus] @aaSubLedgerHdrID  int, @ACTINDX int, @SEQNUMBR int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @Status int output as begin    Select @Status = count(*) from AAG20001  where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >= 0 and   ACTINDX  = @ACTINDX and  SEQNUMBR = @SEQNUMBR and   DEBITAMT   = @DEBITAMT and   CRDTAMNT = @CRDTAMNT and  ORDBTAMT = @ORDBTAMT and  ORCRDAMT  = @ORCRDAMT  end     
GO
GRANT EXECUTE ON  [dbo].[aagGetSOPDistStatus] TO [DYNGRP]
GO

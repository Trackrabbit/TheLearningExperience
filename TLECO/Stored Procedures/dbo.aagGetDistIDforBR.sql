SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagGetDistIDforBR] @aaSubLedgerHdrID int , @aaSubLedgerDistID int output, @SEQNUMBR int as begin  Select @aaSubLedgerDistID = aaSubLedgerDistID  from AAG20001   where aaSubLedgerHdrID = @aaSubLedgerHdrID and   aaSubLedgerDistID > 0 and   SEQNUMBR = @SEQNUMBR and   POSTED = 0  end    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistIDforBR] TO [DYNGRP]
GO

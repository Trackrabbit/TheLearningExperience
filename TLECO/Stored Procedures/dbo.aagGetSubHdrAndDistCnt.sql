SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create       procedure [dbo].[aagGetSubHdrAndDistCnt]  @SERIES int,  @DOCTYPE int,  @DOCNUMBR char(21),   @Opt int,  @SEQNUMBR int,  @aaSubLedgerHdrID int output,  @DistCnt int output,  @MaxDisr   int output,  @aaSubLedgerDistID int output  as begin  select @MaxDisr = 0   select @aaSubLedgerHdrID = aaSubLedgerHdrID   from AAG20000  where SERIES = @SERIES and   DOCTYPE  = @DOCTYPE and   DOCNUMBR = @DOCNUMBR    Select @MaxDisr  = isnull(max(aaSubLedgerDistID) ,1)  from AAG20001   where aaSubLedgerHdrID =  @aaSubLedgerHdrID  and aaSubLedgerDistID > 0 and SEQNUMBR = 16384   group by aaSubLedgerDistID   Select @DistCnt = count(*)   from AAG20001  where aaSubLedgerHdrID = @aaSubLedgerHdrID and   aaSubLedgerDistID >= 0    Select @aaSubLedgerDistID = aaSubLedgerDistID  from AAG20001  where aaSubLedgerHdrID = @aaSubLedgerHdrID and   aaSubLedgerDistID >=  @MaxDisr and  SEQNUMBR = @SEQNUMBR end     
GO
GRANT EXECUTE ON  [dbo].[aagGetSubHdrAndDistCnt] TO [DYNGRP]
GO

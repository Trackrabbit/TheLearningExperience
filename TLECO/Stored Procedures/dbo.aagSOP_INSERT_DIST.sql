SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create           procedure [dbo].[aagSOP_INSERT_DIST]   @ACTINDX integer,   @HdrID integer,   @INTERID char(5),   @DISTTYPE int  as begin  declare @Cnt integer,  @LaaAcctClassID integer ,  @LaaSubLedgerDistID integer,  @aaBrowseType smallint   Select @Cnt = 0,  @LaaAcctClassID = 0,  @LaaSubLedgerDistID = 0,  @aaBrowseType =  0    if not exists (Select ACTINDX from AAG20001   where aaSubLedgerHdrID = @HdrID and   aaSubLedgerDistID >  0 and ACTINDX = @ACTINDX and DISTTYPE in (14,15) )    begin  exec aagGetClassIDBrowseType @ACTINDX, @LaaAcctClassID output, @aaBrowseType output   if @LaaAcctClassID <> 0   begin   Select @LaaSubLedgerDistID = isnull(max(aaSubLedgerDistID),0)+1 from AAG20001  where aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID >0  Insert into AAG20001(aaSubLedgerHdrID,aaSubLedgerDistID,ACTINDX,aaBrowseType, INTERID,SEQNUMBR, aaFutureDist,DISTTYPE,  aaChangeDate,aaChangeTime)  values(@HdrID,@LaaSubLedgerDistID,@ACTINDX,@aaBrowseType, @INTERID,1200,1 ,@DISTTYPE,  convert(char(12), getdate(), 102),convert(char(12), getdate(), 108))   Insert into AAG20002(aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID)  values(@HdrID,@LaaSubLedgerDistID,1)   Insert into AAG20003(aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,aaTrxDimID,aaTrxCodeID)   Select @HdrID,@LaaSubLedgerDistID,1,aaTrxDimID,aaTrxDimCodeIDDflt   from AAG00202 where aaAcctClassID = @LaaAcctClassID and aaTrxDimID >=0   end   end  end     
GO
GRANT EXECUTE ON  [dbo].[aagSOP_INSERT_DIST] TO [DYNGRP]
GO

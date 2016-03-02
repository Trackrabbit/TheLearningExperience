SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE          procedure [dbo].[aagSubWorkHdrUpdate]   @DOCTYPE smallint,  @DOCNUMBR char(20),   @MasterID char(30),      @iTableID int,    @SERIES int,      @CompanyID   smallint,    @aaSubLedgerHdrID    int output   as begin   declare @ISint int  Select  @ISint = 0   if @iTableID in (10101,10100)   select @MasterID = ''    exec  aagIsInitialiseSubWork @DOCTYPE,@DOCNUMBR,@MasterID,@SERIES,@aaSubLedgerHdrID output, @ISint output  if @ISint = 0   begin  exec DYNAMICS.dbo.aagGetNextID 20000, @CompanyID, @aaSubLedgerHdrID output   insert into AAG20000  (aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,Master_ID,aaHdrErrors)  values  (@aaSubLedgerHdrID,@SERIES,@DOCTYPE,@DOCNUMBR,@MasterID,0)  end  end    
GO
GRANT EXECUTE ON  [dbo].[aagSubWorkHdrUpdate] TO [DYNGRP]
GO

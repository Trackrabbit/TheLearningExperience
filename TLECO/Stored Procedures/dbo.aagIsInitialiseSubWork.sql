SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[aagIsInitialiseSubWork]  @DOCTYPE smallint,  @DOCNUMBR char(20),   @MasterID char(30),      @SERIES int,   @aaSubLedgerHdrID int output, @ISInitialise int output  with encryption as  set transaction isolation level read uncommitted set nocount on  begin  set nocount on     Select  @aaSubLedgerHdrID = aaSubLedgerHdrID   from AAG20000 (nolock)  where DOCTYPE = @DOCTYPE and DOCNUMBR = @DOCNUMBR and Master_ID = @MasterID and SERIES = @SERIES   if @aaSubLedgerHdrID >= 1  begin  set @ISInitialise = 1  end   set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagIsInitialiseSubWork] TO [DYNGRP]
GO

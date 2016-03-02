SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagUpdateBrowseType] @ACTINDX int, @HdrID int, @DistID int as begin  declare @ClassID  int,  @BrowseType  int   Select  @ClassID =0,  @BrowseType  =0  exec aagGetClassIDBrowseType  @ACTINDX, @ClassID output, @BrowseType output   Update AAG20001 set aaBrowseType  = @BrowseType   where aaSubLedgerHdrID =  @HdrID and   aaSubLedgerDistID = @DistID end     
GO
GRANT EXECUTE ON  [dbo].[aagUpdateBrowseType] TO [DYNGRP]
GO

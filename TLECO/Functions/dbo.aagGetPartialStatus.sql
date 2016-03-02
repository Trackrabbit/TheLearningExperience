SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create   function [dbo].[aagGetPartialStatus]( @HdrID int, @DistID int, @Series smallint) returns smallint as  begin declare @aaBrowseType   smallint, @aaIsOptionSet   smallint, @aaAssignedPercent int, @Option smallint select  @aaBrowseType   = 0, @aaIsOptionSet   = 0, @aaAssignedPercent = 0, @Option   = 0  if  @Series = 0  set @Option = 6  else if @Series = 2  set @Option = 7  else if @Series = 11  set @Option = 8  else if @Series = 3  set @Option = 9  else if @Series = 12  set @Option = 10  else if @Series = 7  set @Option = 11  else if @Series = 6  set @Option = 17   set @aaBrowseType = 1 select @aaIsOptionSet = aaIsOptionSet from AAG00700 where aaOption = @Option if @aaIsOptionSet = 1 begin if @Series = 0 begin select @aaAssignedPercent = sum(aaAssignedPercent) from AAG10002 where aaGLWorkHdrID = @HdrID and aaGLWorkDistID = @DistID end else begin select @aaAssignedPercent = sum(aaAssignedPercent) from AAG20002 where aaSubLedgerHdrID = @HdrID and aaSubLedgerDistID = @DistID  end if @aaAssignedPercent < 10000 set @aaBrowseType = 2 else set @aaBrowseType = 1  end return @aaBrowseType end   
GO
GRANT EXECUTE ON  [dbo].[aagGetPartialStatus] TO [DYNGRP]
GO

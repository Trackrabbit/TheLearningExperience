SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagUpdateMCStructure]   @aaSubLedgerHdrID  int,  @CURNCYID   char(15) output,  @CURRNIDX   smallint output,  @RATETPID   char(15) output,  @EXGTBLID   char(15)output,  @XCHGRATE   numeric(19,7) output,  @EXCHDATE   datetime output,  @TIME1    datetime output,  @RTCLCMTD   smallint output,  @DENXRATE   numeric(19,7) output,  @MCTRXSTT   smallint  as  begin  select @CURNCYID = CURNCYID,@CURRNIDX = CURRNIDX,@RATETPID = RATETPID,@EXGTBLID = EXGTBLID,  @XCHGRATE = XCHGRATE,@EXCHDATE = EXCHDATE, @TIME1 = TIME1, @RTCLCMTD = RTCLCMTD, @DENXRATE = DENXRATE,  @MCTRXSTT = MCTRXSTT from AAG20001   where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID = 1  end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateMCStructure] TO [DYNGRP]
GO

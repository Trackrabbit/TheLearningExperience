SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagUpdateAABMReportTable]  @aaSubLedgerHdrID int,  @aaSubLedgerDistIDLast int,   @USERID char(15),  @OPT int  as begin  declare @SERIES smallint,  @DOCTYPE int,  @DOCNUMBR char(21),  @PSTGDATE datetime   select  @SERIES   =0,  @DOCTYPE  =0,  @PSTGDATE  = '1900-01-01 00:00:00.000'   select @SERIES = SERIES, @DOCTYPE = DOCTYPE , @DOCNUMBR = DOCNUMBR  from AAG20000  where aaSubLedgerHdrID = @aaSubLedgerHdrID   insert into AAG50000   (USERID,TRXBTCHSRC,aaSubLedgerHdrID,SERIES,DOCTYPE,DOCNUMBR,PSTGDATE,aaOrder)  values(@USERID,'BM',@aaSubLedgerHdrID,@SERIES,@DOCTYPE,@DOCNUMBR,@PSTGDATE,0)   if @OPT = 1   begin  insert into AAG50001  (USERID,TRXBTCHSRC,SERIES,aaSubLedgerHdrID,aaSubLedgerDistID,ACTINDX,DEBITAMT,CRDTAMNT,  ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX,POSTED)  select @USERID,'BM',@SERIES,aaSubLedgerHdrID,aaSubLedgerDistID,ACTINDX,DEBITAMT,CRDTAMNT,   ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX,POSTED   from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID >@aaSubLedgerDistIDLast    insert into AAG50002   (USERID,TRXBTCHSRC,aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,SERIES,  DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,DistRef)  select  @USERID,'BM',aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,@SERIES,  DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,DistRef from AAG20002   where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID >@aaSubLedgerDistIDLast  end  end     
GO
GRANT EXECUTE ON  [dbo].[aagUpdateAABMReportTable] TO [DYNGRP]
GO

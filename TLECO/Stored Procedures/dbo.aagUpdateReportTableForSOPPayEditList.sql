SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagUpdateReportTableForSOPPayEditList]   @USERID CHAR(15),  @DOCTYPE INT,  @SOPNUMBE CHAR(21),  @PSTDATE DATETIME,  @Opt INT OUTPUT,   @Hdr NVARCHAR(30),  @Dist NVARCHAR(30),  @Assign NVARCHAR(30),  @I_UserID VARCHAR(20),  @I_Right INT  as begin  declare   @aaSubLedgerHdrID INT,  @lDocType INT,  @DocNum CHAR(21),  @isval TINYINT,  @POSTED INT   SELECT aaSubLedgerHdrID INTO #TEMP FROM AAG20000 WHERE 1=2   EXEC ('TRUNCATE TABLE ' + @Hdr)  EXEC ('TRUNCATE TABLE ' + @Dist)  EXEC ('TRUNCATE TABLE ' + @Assign)   delete AAG2000E   from AAG2000E a  join AAG20000 b  on a.aaSubLedgerHdrID = b.aaSubLedgerHdrID  where b.DOCNUMBR in ( SELECT DOCNUMBR FROM SOP10103 WHERE SOPTYPE = b.DOCTYPE and SOPNUMBE = @SOPNUMBE AND TRXSORCE = '')  and b.DOCTYPE = @DOCTYPE  and b.SERIES = 3  exec('SELECT * into ##Temp123 from AAG50000 DELETE AAG50000 WHERE aaSubLedgerHdrID in (SELECT distinct aaSubLedgerHdrID FROM ##Temp123) ')   declare CHdr cursor fast_forward for  Select distinct Hdr.aaSubLedgerHdrID, Hdr.DOCTYPE, Hdr.DOCNUMBR  from AAG20000 as Hdr , AAG20001 as Dist  where  Dist.aaSubLedgerHdrID = Hdr.aaSubLedgerHdrID and  Hdr.DOCTYPE = @DOCTYPE and  Hdr.SERIES = 3  and  Hdr.DOCNUMBR in (SELECT DOCNUMBR FROM SOP10103 WHERE SOPTYPE = @DOCTYPE and SOPNUMBE = @SOPNUMBE AND TRXSORCE = '')    open CHdr  fetch next from CHdr into @aaSubLedgerHdrID, @lDocType, @DocNum  while @@fetch_status = 0  begin  insert into #TEMP values (@aaSubLedgerHdrID)   if not exists(SELECT TOP 1 1 FROM AAG50000 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID)  BEGIN  Insert into AAG50000  (USERID, TRXBTCHSRC, aaSubLedgerHdrID,  SERIES, DOCTYPE, DOCNUMBR,PSTGDATE,aaOrder)   values(@USERID,'0',@aaSubLedgerHdrID,3,0,@DocNum,@PSTDATE,0)  exec('insert into '+ @Hdr + '(USERID, TRXBTCHSRC, aaSubLedgerHdrID,  SERIES, DOCTYPE, DOCNUMBR,PSTGDATE,aaOrder)  select USERID, TRXBTCHSRC, aaSubLedgerHdrID,  SERIES, DOCTYPE, DOCNUMBR,PSTGDATE,0 from AAG50000')  delete from AAG50000 where @aaSubLedgerHdrID = @aaSubLedgerHdrID and TRXBTCHSRC = '0'  END  exec aagValidateCodeSubLedHdr 'AAG20002', 'AAG20003',  'AAG2000E', @aaSubLedgerHdrID , @isval output,@I_UserID,@I_Right   fetch next from CHdr into @aaSubLedgerHdrID, @lDocType, @DocNum   end  close CHdr  deallocate CHdr  delete from AAG50000 where @aaSubLedgerHdrID = @aaSubLedgerHdrID and TRXBTCHSRC = '0'  exec('INSERT into AAG50000 (USERID, TRXBTCHSRC, aaSubLedgerHdrID,  SERIES, DOCTYPE, DOCNUMBR,PSTGDATE,aaOrder)   SELECT USERID, TRXBTCHSRC, aaSubLedgerHdrID,  SERIES, DOCTYPE, DOCNUMBR,PSTGDATE,aaOrder  from ##Temp123  DROP TABLE ##Temp123')   Select @Opt = count(*) from AAG2000E WHERE aaSubLedgerHdrID in (SELECT aaSubLedgerHdrID FROM #TEMP)   if @Opt > 0  begin  set @Opt = 5  end end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateReportTableForSOPPayEditList] TO [DYNGRP]
GO
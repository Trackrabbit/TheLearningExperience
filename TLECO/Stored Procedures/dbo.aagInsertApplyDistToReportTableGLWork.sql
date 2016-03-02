SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagInsertApplyDistToReportTableGLWork]  @cUserID char(15), @cTrxBatchSrc char(51), @iSeries int, @iHdrID int  as  SELECT @cTrxBatchSrc = replace(@cTrxBatchSrc,'''','''''')  insert into AAG60001(aaGLWorkHdrID,aaGLWorkDistID) select aaGLWorkHdrID,aaGLWorkDistID from  AAG10001 where aaGLWorkHdrID = @iHdrID   exec('update AAG60001 set USERID = ''' + @cUserID + ''', TRXBTCHSRC = ''' + @cTrxBatchSrc +  ''', SERIES = ''' +@iSeries + ''' where aaGLWorkHdrID = ' + @iHdrID)    
GO
GRANT EXECUTE ON  [dbo].[aagInsertApplyDistToReportTableGLWork] TO [DYNGRP]
GO

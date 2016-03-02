SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagGetFirstAccountLinkedGLWork] @aaGLWorkHdrID int, @ACTINDX int output, @SQNCLINE numeric(19,5) output, @status int output  as begin   declare  @Cnt int  Select  @Cnt   =0,  @status  =0  Select @Cnt  =  count(*) from AAG10001 where aaGLWorkHdrID  = @aaGLWorkHdrID and   aaGLWorkDistID in  (Select aaGLWorkDistID from  AAG10003  where  aaGLWorkHdrID = @aaGLWorkHdrID  and   aaGLWorkDistID >=0 and aaGLWorkAssignID >=0 and aaTrxDimID >0)   and aaWinWasOpen = 0   if @Cnt > 0   begin  Select top 1 @ACTINDX = ACTINDX , @SQNCLINE = SQNCLINE  from AAG10001   where aaGLWorkHdrID  = @aaGLWorkHdrID and   aaGLWorkDistID in  (Select aaGLWorkDistID from  AAG10003  where  aaGLWorkHdrID = @aaGLWorkHdrID  and   aaGLWorkDistID >=0 and aaGLWorkAssignID >=0 and aaTrxDimID >0)   and aaWinWasOpen = 0   order by aaGLWorkHdrID, aaGLWorkDistID  set @status = 1  end  end     
GO
GRANT EXECUTE ON  [dbo].[aagGetFirstAccountLinkedGLWork] TO [DYNGRP]
GO

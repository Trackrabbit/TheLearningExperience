SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagGLWorkDistDelete] @aaGLWorkHdrID  int, @aaGLWorkDistID int, @Opt int  as begin  if @Opt = 0   begin  delete from AAG10001 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID = @aaGLWorkDistID  delete from AAG10002 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID = @aaGLWorkDistID  and aaGLWorkAssignID > 0   delete from AAG10003 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID = @aaGLWorkDistID  and aaGLWorkAssignID > 0  and aaTrxDimID > 0   end   if @Opt = 1   begin  delete from AAG10001 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID >0  delete from AAG10002 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID >0  and aaGLWorkAssignID > 0   delete from AAG10003 where aaGLWorkHdrID = @aaGLWorkHdrID and aaGLWorkDistID >0  and aaGLWorkAssignID > 0  and aaTrxDimID > 0   end   if @Opt = 2   begin  delete from AAG10000 where aaGLWorkHdrID = @aaGLWorkHdrID  delete from AAG10001 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID >0  delete from AAG10002 where aaGLWorkHdrID = @aaGLWorkHdrID and  aaGLWorkDistID >0  and aaGLWorkAssignID > 0   delete from AAG10003 where aaGLWorkHdrID = @aaGLWorkHdrID and aaGLWorkDistID >0  and aaGLWorkAssignID > 0  and aaTrxDimID > 0   end  end     
GO
GRANT EXECUTE ON  [dbo].[aagGLWorkDistDelete] TO [DYNGRP]
GO

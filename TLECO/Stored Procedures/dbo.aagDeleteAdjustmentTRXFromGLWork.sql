SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagDeleteAdjustmentTRXFromGLWork] as  Begin  delete from AAG10001 where aaGLWorkHdrID in(  select aaGLWorkHdrID from AAG10000 where aaTRXType=3)   delete from AAG10002 where aaGLWorkHdrID in(  select aaGLWorkHdrID from AAG10000 where aaTRXType=3)   delete from AAG10003 where aaGLWorkHdrID in(  select aaGLWorkHdrID from AAG10000 where aaTRXType=3)   delete from AAG10000 where aaTRXType=3  End    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteAdjustmentTRXFromGLWork] TO [DYNGRP]
GO

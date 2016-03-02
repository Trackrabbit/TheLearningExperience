SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     function [dbo].[aagMLUDFString] (@USERID char(15), @aaTrxDimCodeID int) returns nvarchar(800)  as  begin declare @aaUDFCodeString nvarchar(800)  select @aaUDFCodeString = convert(nvarchar(800),aaUDFCodeString) from AAG00317 where USERID = @USERID and  aaTrxDimCodeID = @aaTrxDimCodeID  return isnull(@aaUDFCodeString,space(1)) end    
GO
GRANT EXECUTE ON  [dbo].[aagMLUDFString] TO [DYNGRP]
GO

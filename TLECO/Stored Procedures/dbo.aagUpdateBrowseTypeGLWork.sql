SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagUpdateBrowseTypeGLWork] @ACTINDX int, @HdrID int, @DistID int as begin  declare @ClassID  int,  @BrowseType  int   Select  @ClassID =0,  @BrowseType  =0  exec aagGetClassIDBrowseType  @ACTINDX, @ClassID output, @BrowseType output   Update AAG10001 set aaBrowseType  = @BrowseType   where aaGLWorkHdrID =  @HdrID and   aaGLWorkDistID = @DistID end     
GO
GRANT EXECUTE ON  [dbo].[aagUpdateBrowseTypeGLWork] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Create_Depot_Audit] (  @WORECTYPE smallint,  @WORKORDNUM char(11),  @TECHID char(11),  @FROMWOSTAT char(3),  @TOWOSTAT char(3),  @STATIONID char(11),  @USERID char(15),  @DESC char(51)) As declare @vCURRENTDATE datetime declare @CREATEDDATE datetime declare @CREATEDTIME datetime declare @LNITMSEQ integer select @LNITMSEQ = MAX(T2.LNITMSEQ) + 1 from SVC06110 T2 where   T2.WORECTYPE = @WORECTYPE and T2.WORKORDNUM = @WORKORDNUM  select @vCURRENTDATE = GETDATE()  exec SVC_util_split_datetime @vCURRENTDATE, @CREATEDDATE OUTPUT, @CREATEDTIME OUTPUT  insert SVC06110   VALUES(@WORECTYPE,  @WORKORDNUM,  @LNITMSEQ,  @FROMWOSTAT,  @TOWOSTAT,  @STATIONID,  @TECHID,  @DESC,  @USERID,  @CREATEDDATE,  @CREATEDTIME )  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Depot_Audit] TO [DYNGRP]
GO
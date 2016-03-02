SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Depot_Comp_WORK]  (@USERID char(15),  @CHECKDATE datetime,  @OFFICEID char(11),  @Error integer OUTPUT)  AS declare @COMPSTAT char(3) declare @WONumber char(11) declare @Quote char(1), @CurrentDate varchar(20) select @Error = 0 select @COMPSTAT = WOCOMPSTAT from SVC00998 delete from SVC06115 where USERID = @USERID select @Quote = CHAR(39),@CurrentDate = CONVERT(varchar(10),@CHECKDATE,101) + ' 00:00:00'  insert into SVC06115  select   0,   WORECTYPE,   WORKORDNUM,   @USERID,   ENTDTE,   COMPDTE,   WOTYPE,   STATIONID,   OFFID,   0,  0,'',''  from SVC06100 where WORECTYPE = 2 and OFFID = @OFFICEID and COMPDTE <= @CHECKDATE and WOSTAT = @COMPSTAT    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Depot_Comp_WORK] TO [DYNGRP]
GO

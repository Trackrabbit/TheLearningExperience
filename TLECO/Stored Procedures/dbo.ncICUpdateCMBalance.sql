SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create  procedure [dbo].[ncICUpdateCMBalance] 	@CHEKBKID	char(15), 	@TableName	char(30) as 	/*procedure : ncICUpdateCMBalance*/ begin 	set nocount on 	 	declare  @Code 			varchar(4000) 	 	select @Code = ' 	update ' +@TableName+ ' set DepAmt = 0 where CMTrxNum in  		(select CMXFRNUM from CM20600 where Xfr_Record_Number in ( 		select Xfr_Record_Number from NCIC5004 where Xfr_Record_Number in 		(select Xfr_Record_Number from CM20200 where CHEKBKID = ''' + @CHEKBKID + ''' and Xfr_Record_Number <> 0) 		and NC_Source_Company_ID in (select CMPANYID from DYNAMICS..SY01500 where INTERID = DB_NAME())))' 	exec (@Code) 	select @Code = ' 	update ' +@TableName+ ' set PAYMENT_AMOUNT = 0 where CMTrxNum in 		(select CMXFRNUM from CM20600 where Xfr_Record_Number in ( 		select Xfr_Record_Number from NCIC5004 where Xfr_Record_Number in 		(select Xfr_Record_Number from CM20200 where CHEKBKID = ''' + @CHEKBKID + ''' and Xfr_Record_Number <> 0) 		and CMPANYID in (select CMPANYID from DYNAMICS..SY01500 where INTERID = DB_NAME())))' 		 	exec (@Code) 	set nocount off end   
GO
GRANT EXECUTE ON  [dbo].[ncICUpdateCMBalance] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncICUpdateCMBalance] TO [public]
GO

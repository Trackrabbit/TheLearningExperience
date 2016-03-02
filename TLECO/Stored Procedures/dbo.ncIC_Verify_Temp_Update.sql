SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create  procedure [dbo].[ncIC_Verify_Temp_Update] 	@TableName		char(30), 	@ShowProble		smallint as 	/*Procedure : NC_IC_Verify_Temp_Update 	To update the NC_IC_Verify_Temp table 	vilasw@nolancomputers.com*/ 	 begin 	set nocount on	 	  	update NCIC5010 set NCIC5010.ACTINDX = NCIC5011.ACTINDX  		from NCIC5011 join NCIC5010 on NCIC5011.USERID = NCIC5010.USERID and 		NCIC5011.JRNENTRY=NCIC5010.JRNENTRY  	update NCIC5010 set NCIC5010.NC_Source_IC_Journal_Ent = NCIC5012.NC_Source_IC_Journal_Ent  		from NCIC5012 join NCIC5010 on NCIC5010.USERID = NCIC5012.USERID and 		NCIC5012.JRNENTRY=NCIC5010.JRNENTRY  	update NCIC5010 set NCIC5010.NC_Dest_IC_Journal_Entry = NCIC5013.NC_Dest_IC_Journal_Entry, 		NCIC5010.NC_Dest_IC_Company_DB = NCIC5013.NC_Dest_IC_Company_DB  		from NCIC5013 join NCIC5010 on NCIC5010.USERID = NCIC5013.USERID and 		NCIC5013.JRNENTRY=NCIC5010.JRNENTRY 		 	update NCIC5010 set SOURCDOC = 'CMXFR' where SOURCDOC like 'BB%' 	delete NCIC5010 where SOURCDOC = 'CMXFR' /*To filter all Bank Transfer document-Not Supported vilasw*/	 	 	update 	NCIC5010 set NC_Dest_IC_Company_DB = 'INTRA' where  NC_Dest_IC_Company_DB = '' and NC_Dest_IC_Posted = 1 	exec('delete NCIC5010 where NC_Dest_IC_Company_DB not in (select INTERID from DYNAMICS..SY01500 where CMPANYID in  		(select CMPANYID from '+@TableName+')) and (NC_Dest_IC_Company_DB <> ''INTRA'') and NC_Dest_IC_Posted <> 0') 	if @ShowProble = 1 	begin 		delete NCIC5010 where (NC_Source_IC_Posted + NC_Dest_IC_Posted) = 2 	end 	set nocount off end	  
GO
GRANT EXECUTE ON  [dbo].[ncIC_Verify_Temp_Update] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncIC_Verify_Temp_Update] TO [public]
GO

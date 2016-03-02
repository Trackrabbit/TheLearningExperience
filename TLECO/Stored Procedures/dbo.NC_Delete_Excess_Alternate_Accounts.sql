SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[NC_Delete_Excess_Alternate_Accounts] @JRNENTRY		int, @VCHRNMBR		char(21), @RMDNUMWK		char(21), @DOCTYPE		smallint, @SERIES			smallint as begin 	set nocount on 	if @SERIES = 2 	begin 		delete from NCIC3006 where DEX_ROW_ID not in  			(select NCIC3006.DEX_ROW_ID from NCIC3006 inner join GL10001 on  			NCIC3006.JRNENTRY = GL10001.JRNENTRY and  			NCIC3006.SQNCLINE = GL10001.SQNCLINE and  			NCIC3006.NC_Src_IC_Account_Index = GL10001.ACTINDX  			where NCIC3006.JRNENTRY = @JRNENTRY) and  			JRNENTRY = @JRNENTRY 	end  	if @SERIES = 4 	begin 		delete from NCIC3006 where DEX_ROW_ID not in  			(select NCIC3006.DEX_ROW_ID from NCIC3006 inner join PM10100 on  			NCIC3006.VCHRNMBR = PM10100.VCHRNMBR and  			NCIC3006.SQNCLINE = PM10100.DSTSQNUM and  			NCIC3006.NC_Src_IC_Account_Index = PM10100.DSTINDX  			where NCIC3006.VCHRNMBR = @VCHRNMBR) and  			VCHRNMBR = @VCHRNMBR 		 	end 	if @SERIES = 3 	begin 		delete from NCIC3006 where DEX_ROW_ID not in  			(select NCIC3006.DEX_ROW_ID from NCIC3006 inner join RM10101 on  			NCIC3006.RMDNUMWK = RM10101.DOCNUMBR and 			 			NCIC3006.DOCTYPE  = RM10101.RMDTYPAL and  			NCIC3006.SQNCLINE = RM10101.SEQNUMBR and  			NCIC3006.NC_Src_IC_Account_Index = RM10101.DSTINDX  			where NCIC3006.RMDNUMWK = @RMDNUMWK and NCIC3006.DOCTYPE = @DOCTYPE) and  			RMDNUMWK = @RMDNUMWK and DOCTYPE = @DOCTYPE 	end	 	set nocount off end  
GO
GRANT EXECUTE ON  [dbo].[NC_Delete_Excess_Alternate_Accounts] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[NC_Delete_Excess_Alternate_Accounts] TO [public]
GO

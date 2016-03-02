SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncGetDestMCSetting] 	@I_iCompanyID int = NULL, 	@O_iMCSetting int = NULL output as declare 	@sInterCompanyID [char] (5), 	@tTempExecute [char] (1000) /* get the intercompany id */ select @sInterCompanyID=INTERID from DYNAMICS.dbo.SY01500 where CMPANYID=@I_iCompanyID /* get the setting */ create table #CMICSetting ( 	NC_FunctionalOriginating int, 			   ) select @tTempExecute =  ' insert into #CMICSetting '+ 	        ' select NC_FunctionalOriginating '+ 		' from '+@sInterCompanyID+'.dbo.NCIC3000 ' 		 exec( @tTempExecute ) select @O_iMCSetting=NC_FunctionalOriginating from 	#CMICSetting  
GO
GRANT EXECUTE ON  [dbo].[ncGetDestMCSetting] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncGetDestMCSetting] TO [public]
GO

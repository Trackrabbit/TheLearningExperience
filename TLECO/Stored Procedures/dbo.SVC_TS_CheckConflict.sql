SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_TS_CheckConflict] (  @TechID char(21),  @StartDateTime datetime,  @EndDateTime datetime,  @CallNumber char(11),  @Conflict integer OUTPUT ) as select @Conflict = count(*) from SVC00200  LEFT OUTER JOIN  SVC00201 ON (SVC00200.SRVRECTYPE = SVC00201.SRVRECTYPE and SVC00200.CALLNBR = SVC00201.CALLNBR) LEFT OUTER JOIN SVC00951 ON (SVC00201.ITEMNMBR = SVC00951.ITEMNMBR)  where SVC00200.SRVRECTYPE = 2 and  SVC00200.COMPDTE = '01/01/1900' and SVC00200.TECHID = @TechID and  SVC00200.CALLNBR <> @CallNumber  and ((@StartDateTime >= CONVERT(varchar(10),SVC00200.ETADTE,101) + ' ' + CONVERT(varchar(10),SVC00200.ETATME,108) and   @StartDateTime <= (DATEADD(hour,(CASE WHEN SVC00200.ETTR = 0 THEN IsNull(SVC00951.MTTR,0) ELSE SVC00200.ETTR END),  CONVERT(varchar(10),SVC00200.ETADTE,101) + ' ' + CONVERT(varchar(10),SVC00200.ETATME,108)))) or (@EndDateTime >= CONVERT(varchar(10),SVC00200.ETADTE,101) + ' ' + CONVERT(varchar(10),SVC00200.ETATME,108) and  @EndDateTime <= (DATEADD(hour,(CASE WHEN SVC00200.ETTR = 0 THEN IsNull(SVC00951.MTTR,0) ELSE SVC00200.ETTR END),  CONVERT(varchar(10),SVC00200.ETADTE,101) + ' ' + CONVERT(varchar(10),SVC00200.ETATME,108)))) )    
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_CheckConflict] TO [DYNGRP]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCCompletedRMACountByItemMetric]  @I_dUserDate datetime = NULL,  @I_iNumItems int   = NULL,  @I_iPeriodYear char(10)   = NULL as DECLARE @LIMIT smallint SET @LIMIT = 10  create table #ItemCounts (RMANumber char(15) not null, Item char(31) not null)  create table #RMACounts (RMACount int not null,  Return_Item_Number char(31) NOT NULL)  insert #ItemCounts   (RMANumber,Item)  select RETDOCID ,Return_Item_Number  from SVC35200 with (NOLOCK)   where RETUDATE BETWEEN dbo.GetBeginningDate(@I_dUserDate, 'Fiscal', @I_iPeriodYear, 1) AND @I_dUserDate  group by RETDOCID, Return_Item_Number  order by Return_Item_Number insert #RMACounts   (RMACount, Return_Item_Number) select  count(RMANumber) as RMACount,   Item as Return_Item_Number  from  #ItemCounts with (NOLOCK)  group by Item  SELECT TOP (SELECT CASE WHEN @I_iNumItems = 0 THEN @LIMIT ELSE @I_iNumItems END)  * from #RMACounts order by   RMACount DESC,   Return_Item_Number  drop table #RMACounts drop table #ItemCounts     
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemMetric] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemMetric] TO [rpt_power user]
GO

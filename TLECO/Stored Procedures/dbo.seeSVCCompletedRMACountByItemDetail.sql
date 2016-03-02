SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCCompletedRMACountByItemDetail]  @UserDate datetime,  @MaxItems int,  @ItemNumber varchar(31) = '',  @TimeUnit varchar(10) = 'Period' AS DECLARE @NO_LIMIT int SET @NO_LIMIT = 2147483647  create table #ItemCounts (RMANumber char(15) not null, Item char(31) not null)  create table #RMACounts (RMACount int not null,  Return_Item_Number char(31) NOT NULL)  insert #ItemCounts   (RMANumber,Item)  select RETDOCID ,Return_Item_Number  from SVC35200 with (NOLOCK)   where RETUDATE BETWEEN dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1) AND @UserDate  and (rtrim(Return_Item_Number) LIKE   CASE WHEN rtrim(@ItemNumber) = '' THEN '%'  ELSE rtrim(@ItemNumber) END)   group by RETDOCID, Return_Item_Number  order by Return_Item_Number insert #RMACounts   (RMACount, Return_Item_Number)  SELECT TOP (SELECT CASE WHEN @MaxItems = 0 THEN @NO_LIMIT ELSE @MaxItems END)  count(RMANumber) as RMACount,   Item as Return_Item_Number  from  #ItemCounts with (NOLOCK)  group by Item order by RMACount desc  SELECT   RMACount,  [Return Document ID],  [Return Record Type],  [Entry Date],  [Return Date],   [Complete Date],  [Customer ID],   [Item Number],   [Item Description],  [Return Item Number],  [Return Item Description],  [Extended Cost],  [Extended Price],  [Item Number For Drillback],  [Return Document ID For Drillback],  [Customer ID For Drillback]  from #RMACounts it join HistoryRMALines ON HistoryRMALines.[Return Item Number] = it.Return_Item_Number   where [Return Date] BETWEEN dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1) AND @UserDate  order by RMACount desc  drop table #ItemCounts drop table #RMACounts    
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCCompletedRMACountByItemDetail] TO [rpt_power user]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[seeSOPTopOnlineCommerceItemsSold]     @RankStart int = null,     @RankEnd int = null,      @PeriodStart DateTime = null,      @PeriodEnd DateTime = null  As DECLARE @CompanyID int Create Table #ttLines (   ItemNumber char(31),  ItemDesc char(101),   OrderNumber char(21),   QtyInvoiced decimal(19,5),  UnitPrice decimal(19,5),   ExtPrice decimal(19,5),   ItemDrillBack varchar(2095),  SOPNumberForDrillback varchar(2095) ) SELECT @CompanyID = CMPANYID FROM DYNAMICS..SY01500 WHERE INTERID = db_name() INSERT INTO #ttLines SELECT  ITEMNMBR, ITEMDESC, header.SOPNUMBE, QTYTOINV, UNITPRCE, XTNDPRCE, i.[Item Number For Drillback], sil.[SOP Number For Drillback] From  SOP30300 lines INNER JOIN SOP30200 header ON (header.SOPTYPE = lines.SOPTYPE AND header.SOPNUMBE = lines.SOPNUMBE)  INNER JOIN DYNAMICS..DO40100 do ON header.DOCID = do.ECOMMINVID AND do.CMPANYID = @CompanyID  INNER JOIN dbo.Items i ON i.[Item Number] = lines.ITEMNMBR  INNER JOIN dbo.SalesLineItems sil ON sil.[SOP Number] = header.SOPNUMBE  Where (header.SOPTYPE = 3  AND header.INVODATE >= CASE WHEN @PeriodStart  is null THEN header.INVODATE ELSE @PeriodStart END AND header.INVODATE <= CASE WHEN @PeriodEnd is null THEN header.INVODATE ELSE @PeriodEnd END AND QTYTOINV > 0) SELECT row_number() OVER (ORDER BY SUM(ExtPrice) DESC) as ItemRank, ItemDesc, ItemNumber, SUM(UnitPrice) as UnitPrice, Sum(QtyInvoiced) as QtyInvoiced, SUM(ExtPrice) as ExtPrice, ItemDrillBack, SOPNumberForDrillback INTO #header FROM #ttLines GROUP BY ItemNumber, ItemDesc, ItemDrillBack , SOPNumberForDrillback ORDER BY ItemRank SELECT h.ItemRank, l.* FROM #ttLines l INNER JOIN #header h ON h.ItemNumber = l.ItemNumber WHERE l.ItemNumber in (SELECT ItemNumber FROM #header WHERE (  ItemRank >= CASE WHEN @RankStart is null THEN ItemRank ELSE @RankStart END     AND  ItemRank <= CASE WHEN @RankEnd is null THEN ItemRank ELSE @RankEnd END ) )          
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopOnlineCommerceItemsSold] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopOnlineCommerceItemsSold] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopOnlineCommerceItemsSold] TO [rpt_operations manager]
GO

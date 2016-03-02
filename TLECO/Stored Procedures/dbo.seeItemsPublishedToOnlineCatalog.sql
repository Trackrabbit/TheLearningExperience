SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE Procedure [dbo].[seeItemsPublishedToOnlineCatalog]     @ItemNumberStart varchar(31) = null,     @ItemNumberEnd varchar(31) = null As  SELECT iv1.ITEMNMBR as ItemNumber, iv1.ITEMDESC as ItemDesc, i.[Item Number For Drillback], SUM(QTYONHND - ATYALLOC) as QtyAvail FROM IV00101 iv1 INNER JOIN IV00102 iv2 ON iv1.ITEMNMBR = iv2.ITEMNMBR AND iv2.LOCNCODE <> ''  INNER JOIN Items i on iv1.ITEMNMBR = i.[Item Number] WHERE   (ITEMTYPE = 1 OR   ITEMTYPE = 2 AND      INCLUDEINDP = 1) AND   iv1.ITEMNMBR >=  CASE WHEN @ItemNumberStart is null THEN iv1.ITEMNMBR ELSE @ItemNumberStart END AND  iv1.ITEMNMBR <= CASE WHEN @ItemNumberEnd is null THEN iv1.ITEMNMBR ELSE @ItemNumberEnd END GROUP BY iv1.ITEMNMBR, iv1.ITEMDESC, i.[Item Number For Drillback] ORDER BY QtyAvail DESC          
GO
GRANT EXECUTE ON  [dbo].[seeItemsPublishedToOnlineCatalog] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeItemsPublishedToOnlineCatalog] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeItemsPublishedToOnlineCatalog] TO [rpt_operations manager]
GO

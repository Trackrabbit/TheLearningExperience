SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_SAI10100_GetDocsToTrf]
 AS 
 BEGIN 
 declare    @exb char(15)
 declare cur cursor for
    select BACHNUMB
    from MS273534
 DECLARE @excludedbatches TABLE ( BACHNUMB char(15)) 
    INSERT INTO @excludedbatches ( BACHNUMB ) 
        SELECT     BACHNUMB
        FROM     SOP10100
 set @exb = '' 
 open cur 
    fetch next from cur into @exb 
    while (@@fetch_status = 0) 
    begin 
        delete from @excludedbatches 
        where BACHNUMB like rtrim(@exb) + '%' 
    fetch next from cur into @exb 
    end close cur deallocate cur 
   SELECT hdr.SOPNUMBE as SopNumber, hdr.SOPTYPE as SopType, hdr.BACHNUMB as BatchNumber, hdr.DEX_ROW_ID as DEX_ROW_ID 
      FROM SOP10100 hdr WITH (NOLOCK) 
        INNER JOIN SOP10200 lnItem WITH (NOLOCK) 
           ON hdr.SOPNUMBE = lnItem.SOPNUMBE 
      WHERE hdr.SOPTYPE = 2 
        and lnItem.QTYTOINV > 0 
        and lnItem.QTYTOINV = lnItem.QTYFULFI 
        and hdr.SOPNUMBE not in (SELECT SOPNUMBE FROM SOP10104 WHERE DELETE1 = 1) 
        and hdr.BACHNUMB in (SELECT BACHNUMB FROM @excludedbatches) 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_SAI10100_GetDocsToTrf] TO [DYNGRP]
GO

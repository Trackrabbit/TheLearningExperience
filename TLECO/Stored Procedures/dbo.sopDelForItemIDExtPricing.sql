SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    PROCEDURE [dbo].[sopDelForItemIDExtPricing]  @piST_ItemNo  char(31)  AS  DECLARE  @loST_SchemeCode char(15),  @loST_ItemType char(1),  @loST_ItemNumber char(31)   select @loST_ItemNumber = IV10401.ITEMNMBR,  @loST_SchemeCode = IV10401.PRCSHID,  @loST_ItemType = IV10401.EPITMTYP  FROM IV10401 where IV10401.ITEMNMBR = @piST_ItemNo and EPITMTYP = 'I'   DELETE  IV10401  FROM IV10401  WHERE IV10401.ITEMNMBR = @piST_ItemNo and EPITMTYP = @loST_ItemType   DELETE FROM IV10402  WHERE PRCSHID = @loST_SchemeCode  AND EPITMTYP = @loST_ItemType  AND ITEMNMBR = @piST_ItemNo  DELETE IV10403  FROM IV10403  WHERE PRCSHID = @loST_SchemeCode  AND EPITMTYP = @loST_ItemType  AND ITEMNMBR = @piST_ItemNo    
GO
GRANT EXECUTE ON  [dbo].[sopDelForItemIDExtPricing] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[NDS_UDF_GetOrderedItems]  (@docNumber char(21), @docType smallint, @docSrc int)
  RETURNS nvarchar(1000)
 AS 
BEGIN
  IF(@docSrc = 1)
  BEGIN
    DECLARE curItem CURSOR READ_ONLY
      FOR SELECT ITEMDESC, QUANTITY, XTNDPRCE FROM SOP10200 WHERE SOPNUMBE = @docNumber AND SOPTYPE = @docType
  END
  IF(@docSrc = 3)
  BEGIN
    DECLARE curItem CURSOR READ_ONLY
      FOR SELECT ITEMDESC, QUANTITY, XTNDPRCE FROM IVC10101 WHERE INVCNMBR = @docNumber AND DOCTYPE = 1
  END
  DECLARE @itemDesc char(101), @itemQty money, @itemPrice money, @formattedItemDesc nvarchar(51), @formattedItemDesc2 nvarchar(60),
    @formattedItemQty nvarchar(14), @formattedItemPrice nvarchar(14), @preformatQty nvarchar(14), @preformatPrice nvarchar(14), @finalStr nvarchar(1000)
  SET @finalStr = ''
  OPEN curItem
  FETCH NEXT FROM curItem INTO @itemDesc, @itemQty, @itemPrice
  WHILE (@@fetch_status <> -1)
  BEGIN
    IF (@@fetch_status <> -2)
    BEGIN
      SET @formattedItemDesc = REPLICATE('.', 50)
      SET @formattedItemQty = REPLICATE('.', 10)
      SET @formattedItemPrice = REPLICATE('.', 10)
      SET @preformatQty = ISNULL(CONVERT(nvarchar(12), @itemQty, 1), 0)
      SET @preformatPrice = ISNULL(CONVERT(nvarchar(12), @itemPrice, 1),0)
      SET @formattedItemQty = STUFF(@formattedItemQty, 1, LEN(@preformatQty),@preformatQty)
      SET @formattedItemPrice = STUFF(@formattedItemPrice, 11 - LEN(@preformatPrice), LEN(@preformatPrice), @preformatPrice)
      IF(LEN(@itemDesc) <= 50)
      BEGIN
        SET @formattedItemDesc = STUFF(@formattedItemDesc, 1, LEN(@itemDesc), RTRIM(@itemDesc))
        SET @finalStr = @finalStr + @formattedItemDesc + '   ' + @formattedItemQty + @formattedItemPrice + char(13) + char(10) + '    '
      END
      ELSE
      BEGIN
        SET @formattedItemDesc = STUFF(@formattedItemDesc, 1, 50, SUBSTRING(@itemDesc, 1, 50)) + '-'
        SET @formattedItemDesc2 = '  ' + SUBSTRING(@itemDesc, 51, 50) + char(13) + char(10)
        SET @finalStr = @finalStr + @formattedItemDesc + '  ' + @formattedItemQty + @formattedItemPrice + char(13) + char(10) + '    ' + @formattedItemDesc2 + '    '
      END
    END
    FETCH NEXT FROM curItem INTO @itemDesc, @itemQty, @itemPrice
  END
  CLOSE curItem
  DEALLOCATE curItem
  RETURN ISNULL(@finalStr, 'None')
END
GO
GRANT EXECUTE ON  [dbo].[NDS_UDF_GetOrderedItems] TO [DYNGRP]
GO

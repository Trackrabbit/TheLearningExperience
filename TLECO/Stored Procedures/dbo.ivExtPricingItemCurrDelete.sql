SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[ivExtPricingItemCurrDelete]  @ItemNo  char(31),  @CurrencyID char(15) AS  DELETE IV10402  FROM IV10402 AS SWU  INNER JOIN IV10401 AS SW   ON SW.ITEMNMBR = SWU.ITEMNMBR  INNER JOIN SOP10110 AS SH  ON SH.PRCSHID = SW.PRCSHID  WHERE SWU.EPITMTYP = 'I' AND  SWU.PRCSHID = SW.PRCSHID AND   SW.EPITMTYP = 'I' AND  SH.CURNCYID = @CurrencyID AND  SWU.ITEMNMBR = @ItemNo  DELETE IV10401 FROM IV10401 AS SW  INNER JOIN SOP10110 AS SH  ON SH.PRCSHID = SW.PRCSHID  WHERE   SW.EPITMTYP = 'I' AND  SH.CURNCYID = @CurrencyID AND  SW.ITEMNMBR = @ItemNo    
GO
GRANT EXECUTE ON  [dbo].[ivExtPricingItemCurrDelete] TO [DYNGRP]
GO

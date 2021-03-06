SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_ItemListByFilter] (  @Filter varchar(255) ) As SELECT ITEMNMBR, ITEMDESC, ITEMTYPE  FROM IV00101  WHERE (ITEMTYPE <> 5) AND (ITEMTYPE <> 6) AND (ITEMTYPE <> 4) AND (UPPER(ITEMNMBR) like @Filter or  UPPER(ITEMDESC) like @Filter)  ORDER BY ITEMNMBR  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_ItemListByFilter] TO [DYNGRP]
GO

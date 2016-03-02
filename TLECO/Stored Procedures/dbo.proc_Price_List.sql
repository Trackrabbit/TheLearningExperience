SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_Price_List]
    (
        @PRCLEVEL varchar(20)
    )
	AS
SELECT i.[ITEMNMBR]
      ,i.[PRCLEVEL]
      ,i.[UOMPRICE]
      ,p.ITEMDESC
  FROM [TLECO].[dbo].[IV00108] i 
  JOIN [TLECO].[dbo].[IV00101] p on i.ITEMNMBR = p.ITEMNMBR  where i.[PRCLEVEL]=@PRCLEVEL
GO
GRANT EXECUTE ON  [dbo].[proc_Price_List] TO [DYNGRP]
GO

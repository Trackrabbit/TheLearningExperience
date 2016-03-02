SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300SI] (@Data_Connection_ID char(15), @Data_Connection_Name char(65), @SQL_View char(201), @PRODID smallint, @Series_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB90300 (Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number) VALUES ( @Data_Connection_ID, @Data_Connection_Name, @SQL_View, @PRODID, @Series_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300SI] TO [DYNGRP]
GO

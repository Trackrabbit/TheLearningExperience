SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00310SI] (@EQUIPID int, @LNITMSEQ int, @DATE1 datetime, @TIME1 datetime, @USERID char(15), @From_Customer_Number char(15), @To_Customer_Number char(15), @From_Config_Reference char(21), @To_Config_Reference char(21), @From_Confg_Level smallint, @To_Config_Level smallint, @From_Config_Sequence smallint, @To_Config_Sequence smallint, @From_Serial_Number char(21), @To_Serial_Number char(21), @From_Item_Number char(31), @To_Item_Number char(31), @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00310 (EQUIPID, LNITMSEQ, DATE1, TIME1, USERID, From_Customer_Number, To_Customer_Number, From_Config_Reference, To_Config_Reference, From_Confg_Level, To_Config_Level, From_Config_Sequence, To_Config_Sequence, From_Serial_Number, To_Serial_Number, From_Item_Number, To_Item_Number, DSCRIPTN) VALUES ( @EQUIPID, @LNITMSEQ, @DATE1, @TIME1, @USERID, @From_Customer_Number, @To_Customer_Number, @From_Config_Reference, @To_Config_Reference, @From_Confg_Level, @To_Config_Level, @From_Config_Sequence, @To_Config_Sequence, @From_Serial_Number, @To_Serial_Number, @From_Item_Number, @To_Item_Number, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00310SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CreditCard_MSTRSS_1] (@MSO_TableName char(49), @MSO_StringKey1 char(73), @MSO_StringKey2 char(73), @MSO_IntKey1 int, @MSO_IntKey2 int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_TableName, MSO_StringKey1, MSO_StringKey2, MSO_IntKey1, MSO_IntKey2, MSO_CardNumberPABP, DEX_ROW_ID FROM .MSO_CreditCard_MSTR WHERE MSO_TableName = @MSO_TableName AND MSO_StringKey1 = @MSO_StringKey1 AND MSO_StringKey2 = @MSO_StringKey2 AND MSO_IntKey1 = @MSO_IntKey1 AND MSO_IntKey2 = @MSO_IntKey2 ORDER BY MSO_TableName ASC, MSO_StringKey1 ASC, MSO_StringKey2 ASC, MSO_IntKey1 ASC, MSO_IntKey2 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CreditCard_MSTRSS_1] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CreditCard_MSTRSI] (@MSO_TableName char(49), @MSO_StringKey1 char(73), @MSO_StringKey2 char(73), @MSO_IntKey1 int, @MSO_IntKey2 int, @MSO_CardNumberPABP char(165), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MSO_CreditCard_MSTR (MSO_TableName, MSO_StringKey1, MSO_StringKey2, MSO_IntKey1, MSO_IntKey2, MSO_CardNumberPABP) VALUES ( @MSO_TableName, @MSO_StringKey1, @MSO_StringKey2, @MSO_IntKey1, @MSO_IntKey2, @MSO_CardNumberPABP) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CreditCard_MSTRSI] TO [DYNGRP]
GO

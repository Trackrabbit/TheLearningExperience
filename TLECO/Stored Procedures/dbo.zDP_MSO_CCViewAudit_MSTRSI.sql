SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CCViewAudit_MSTRSI] (@MSO_CCViewAuditUser char(15), @MSO_AccessDate datetime, @MSO_AccessTime datetime, @MSO_CCViewAuditWindow char(81), @CUSTNMBR char(15), @MSO_CardNumberPABP char(165), @MSO_TableName char(49), @MSO_StringKey1 char(73), @MSO_StringKey2 char(73), @MSO_IntKey1 int, @MSO_IntKey2 int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MSO_CCViewAudit_MSTR (MSO_CCViewAuditUser, MSO_AccessDate, MSO_AccessTime, MSO_CCViewAuditWindow, CUSTNMBR, MSO_CardNumberPABP, MSO_TableName, MSO_StringKey1, MSO_StringKey2, MSO_IntKey1, MSO_IntKey2) VALUES ( @MSO_CCViewAuditUser, @MSO_AccessDate, @MSO_AccessTime, @MSO_CCViewAuditWindow, @CUSTNMBR, @MSO_CardNumberPABP, @MSO_TableName, @MSO_StringKey1, @MSO_StringKey2, @MSO_IntKey1, @MSO_IntKey2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CCViewAudit_MSTRSI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CCViewAudit_MSTRSS_4] (@MSO_StringKey1 char(73), @MSO_StringKey2 char(73), @MSO_IntKey1 int, @MSO_IntKey2 int, @MSO_CCViewAuditUser char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_CCViewAuditUser, MSO_AccessDate, MSO_AccessTime, MSO_CCViewAuditWindow, CUSTNMBR, MSO_CardNumberPABP, MSO_TableName, MSO_StringKey1, MSO_StringKey2, MSO_IntKey1, MSO_IntKey2, DEX_ROW_ID FROM .MSO_CCViewAudit_MSTR WHERE MSO_StringKey1 = @MSO_StringKey1 AND MSO_StringKey2 = @MSO_StringKey2 AND MSO_IntKey1 = @MSO_IntKey1 AND MSO_IntKey2 = @MSO_IntKey2 AND MSO_CCViewAuditUser = @MSO_CCViewAuditUser ORDER BY MSO_StringKey1 ASC, MSO_StringKey2 ASC, MSO_IntKey1 ASC, MSO_IntKey2 ASC, MSO_CCViewAuditUser ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CCViewAudit_MSTRSS_4] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_Drop_TrkEmail]
 AS 
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_UDF_AlignRight'))) DROP FUNCTION NDS_UDF_AlignRight
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_UDF_FormatPhoneNumber'))) DROP FUNCTION NDS_UDF_FormatPhoneNumber
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_UDF_GetDate') AND xtype IN (N'FN', N'IF', N'TF'))) DROP FUNCTION NDS_UDF_GetDate
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_UDF_GetOrderedItems'))) DROP FUNCTION NDS_UDF_GetOrderedItems
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_UDF_GetTime') AND xtype IN (N'FN', N'IF', N'TF'))) DROP FUNCTION NDS_UDF_GetTime
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_InsertInto_MS273529') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)) DROP PROCEDURE NDS_InsertInto_MS273529
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_Send_cdosysmail') AND type = 'P')) DROP PROCEDURE NDS_Send_cdosysmail
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_TRKEML_ReadTextFile') AND type = 'P')) DROP PROCEDURE NDS_TRKEML_ReadTextFile
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_EmailTracking') AND type = 'P')) DROP PROCEDURE NDS_EmailTracking
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_TRKEML_AutoSendEmail') AND type = 'TR')) DROP TRIGGER NDS_TRKEML_AutoSendEmail
  IF (EXISTS (SELECT * FROM dbo.sysobjects WHERE [id] = OBJECT_ID(N'NDS_Drop_TrkEmail') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)) DROP PROCEDURE NDS_Drop_TrkEmail
GO
GRANT EXECUTE ON  [dbo].[NDS_Drop_TrkEmail] TO [DYNGRP]
GO

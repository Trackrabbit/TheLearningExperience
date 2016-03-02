SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[aagCheckColumnName]  @iColName varchar(51) = NULL,   @oExists smallint = NULL out,  @oStatus smallint = NULL out as  select  @oStatus = 0 if exists(select TRANSVAL from SY05300  where STRTYPE = 99 and TRANSVAL = @iColName) begin select @oExists = 1 return end return 0    
GO

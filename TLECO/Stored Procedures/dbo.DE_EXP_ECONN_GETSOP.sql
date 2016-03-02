SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DE_EXP_ECONN_GETSOP]
AS
DECLARE @I_O_vSopNumber char(21)
Begin
EXEC taGetSopNumber 
@I_tSOPTYPE = 3,
@I_cDOCID = 'PREENROLL',
@I_tInc_Dec = 1 ,
@O_vSopNumber=@I_O_vSopNumber OUTPUT
END
SELECT @I_O_vSopNumber as I_O_vSopNumber
GO
GRANT EXECUTE ON  [dbo].[DE_EXP_ECONN_GETSOP] TO [DYNGRP]
GO

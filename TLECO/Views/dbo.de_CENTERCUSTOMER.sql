SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[de_CENTERCUSTOMER] 
AS
SELECT * FROM RM00101 WHERE LEFT(CUSTNMBR,2)='CR' AND ISNUMERIC(COMMENT2)=1
GO

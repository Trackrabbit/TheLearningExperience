SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[De_Import2012Customer]
as
select * from RM00101 where CUSTNMBR like '%-2012'
GO

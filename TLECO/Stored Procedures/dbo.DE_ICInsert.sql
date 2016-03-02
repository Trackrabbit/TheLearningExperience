SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE Procedure [dbo].[DE_ICInsert] @AccountString char(20),@JrnEntry int, @Dex_Row_ID int
as
Declare @CompanyID int
set @CompanyID =(Select CMPANYID from NCIC3005 ic join GL00105 a on ic.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST=@AccountString)

Declare @NC_Dest_Account_Index int
set @NC_Dest_Account_Index =(Select IC.NC_Dest_IC_Account_Index from NCIC3005 ic join GL00105 a on ic.NC_Src_IC_Account_Index=a.ACTINDX where a.ACTNUMST=@AccountString)

Declare @companyasstring char(10)
set @companyasstring=(Select Interid From DYNAMICS..SY01500 where CMPANYID=@CompanyID)
Declare @NC_Dest_IC_Index int

set @NC_Dest_IC_Index='Select Actindx From '+@companyasstring+'..gl00105 where ACTNUMST=rtrim('+@AccountString+'))'
print @NC_Dest_IC_Index

GO
GRANT EXECUTE ON  [dbo].[DE_ICInsert] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AAAccountingClasses] AS select rtrim(['aaAccountClassMstr'].[aaAccountClass]) as 'Class ID', rtrim(['aaAccountClassMstr'].[aaAcctClassDescr]) as 'Description 1',  ['aaAccountClassMstr'].[aaAcctClassID] as 'Account Class ID', rtrim(['aaAccountClassMstr'].[aaAcctClassDescr2]) as 'Description 2'           from [AAG00201] as ['aaAccountClassMstr'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[AAAccountingClasses] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAAccountingClasses] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAAccountingClasses] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAAccountingClasses] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AAAccountingClasses] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AAAccountingClasses] TO [rpt_certified accountant]
GO

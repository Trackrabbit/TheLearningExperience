SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[CFM30300] AS SELECT * FROM CFM30200 WHERE SOPTYPE <> 1     
GO
GRANT SELECT ON  [dbo].[CFM30300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM30300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM30300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM30300] TO [DYNGRP]
GO
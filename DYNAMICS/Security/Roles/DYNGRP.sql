CREATE ROLE [DYNGRP]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'DYNGRP', N'akosolapova'
GO
EXEC sp_addrolemember N'DYNGRP', N'apage'
GO
EXEC sp_addrolemember N'DYNGRP', N'arussell'
GO
EXEC sp_addrolemember N'DYNGRP', N'dcalzada'
GO
EXEC sp_addrolemember N'DYNGRP', N'delliott'
GO
EXEC sp_addrolemember N'DYNGRP', N'george'
GO
EXEC sp_addrolemember N'DYNGRP', N'gschimenti'
GO
EXEC sp_addrolemember N'DYNGRP', N'jkulberg'
GO
EXEC sp_addrolemember N'DYNGRP', N'joel'
GO
EXEC sp_addrolemember N'DYNGRP', N'jshechtman'
GO
EXEC sp_addrolemember N'DYNGRP', N'jweissman'
GO
EXEC sp_addrolemember N'DYNGRP', N'lsochinski'
GO
EXEC sp_addrolemember N'DYNGRP', N'mwall'
GO
EXEC sp_addrolemember N'DYNGRP', N'NodusDSS'
GO
EXEC sp_addrolemember N'DYNGRP', N'rjarquin'
GO
EXEC sp_addrolemember N'DYNGRP', N'slevine'
GO
EXEC sp_addrolemember N'DYNGRP', N'theexperts'
GO
EXEC sp_addrolemember N'DYNGRP', N'TLECORP\theexperts'
GO
EXEC sp_addrolemember N'DYNGRP', N'vbakal'
GO
GRANT CREATE DEFAULT TO [DYNGRP]
GRANT CREATE PROCEDURE TO [DYNGRP]
GRANT CREATE VIEW TO [DYNGRP]
GRANT VIEW DEFINITION TO [DYNGRP]

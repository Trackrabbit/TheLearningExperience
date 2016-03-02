CREATE TABLE [dbo].[WDC41101]
(
[DUMYRCRD] [tinyint] NOT NULL,
[WDC_Security_Checkbox_1] [tinyint] NOT NULL,
[WDC_Security_Checkbox_2] [tinyint] NOT NULL,
[WDC_Security_Checkbox_3] [tinyint] NOT NULL,
[WDC_Security_Checkbox_4] [tinyint] NOT NULL,
[WDC_Security_Checkbox_5] [tinyint] NOT NULL,
[WDC_Security_Checkbox_6] [tinyint] NOT NULL,
[WDC_Security_Checkbox_7] [tinyint] NOT NULL,
[WDC_Security_Checkbox_8] [tinyint] NOT NULL,
[WDC_Security_Checkbox_9] [tinyint] NOT NULL,
[WDC_Security_Checkbox_10] [tinyint] NOT NULL,
[WDC_Security_Checkbox_11] [tinyint] NOT NULL,
[WDC_Security_Checkbox_12] [tinyint] NOT NULL,
[WDC_Security_Checkbox_13] [tinyint] NOT NULL,
[WDC_Security_Checkbox_14] [tinyint] NOT NULL,
[WDC_Security_Checkbox_15] [tinyint] NOT NULL,
[WDC_Security_Checkbox_16] [tinyint] NOT NULL,
[WDC_Security_Checkbox_17] [tinyint] NOT NULL,
[WDC_Security_Checkbox_18] [tinyint] NOT NULL,
[WDC_Security_Checkbox_19] [tinyint] NOT NULL,
[WDC_Security_Checkbox_20] [tinyint] NOT NULL,
[WDC_Security_Checkbox_21] [tinyint] NOT NULL,
[WDC_Security_Checkbox_22] [tinyint] NOT NULL,
[WDC_Security_Checkbox_23] [tinyint] NOT NULL,
[WDC_Security_Checkbox_24] [tinyint] NOT NULL,
[WDC_Security_Checkbox_25] [tinyint] NOT NULL,
[WDC_Security_Checkbox_26] [tinyint] NOT NULL,
[WDC_Security_Checkbox_27] [tinyint] NOT NULL,
[WDC_Security_Checkbox_28] [tinyint] NOT NULL,
[WDC_Security_Checkbox_29] [tinyint] NOT NULL,
[WDC_Security_Checkbox_30] [tinyint] NOT NULL,
[DTAPTHNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[MESSAGE] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WDC41101] ADD CONSTRAINT [CK__WDC41101__CREATD__54968AE5] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[WDC41101] ADD CONSTRAINT [CK__WDC41101__MODIFD__558AAF1E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[WDC41101] ADD CONSTRAINT [PKWDC41101] PRIMARY KEY NONCLUSTERED  ([DUMYRCRD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[DUMYRCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[WDC_Security_Checkbox_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41101].[DTAPTHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41101].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41101].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41101].[MESSAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WDC41101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WDC41101].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41101].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[WDC41101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WDC41101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WDC41101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WDC41101] TO [DYNGRP]
GO

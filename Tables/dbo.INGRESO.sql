CREATE TABLE [dbo].[INGRESO]
(
[IDING] [int] NOT NULL IDENTITY(1, 1),
[IDPER] [int] NOT NULL,
[IDASI] [int] NOT NULL,
[FECING] [date] NOT NULL,
[TOTING] [decimal] (6, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INGRESO] ADD CONSTRAINT [INGRESO_pk] PRIMARY KEY CLUSTERED  ([IDING]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INGRESO] ADD CONSTRAINT [PAGA_APAFA_ASIGNACION] FOREIGN KEY ([IDASI]) REFERENCES [dbo].[ASIGNACION] ([IDASI])
GO
ALTER TABLE [dbo].[INGRESO] ADD CONSTRAINT [PAGA_APAFA_PERSONA] FOREIGN KEY ([IDPER]) REFERENCES [dbo].[PERSONA] ([IDPER])
GO

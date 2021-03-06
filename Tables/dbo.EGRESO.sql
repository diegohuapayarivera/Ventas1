CREATE TABLE [dbo].[EGRESO]
(
[IDEGR] [int] NOT NULL IDENTITY(1, 1),
[IDSER] [int] NOT NULL,
[IDASI] [int] NOT NULL,
[DESEGRE] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FECEGRE] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EGRESO] ADD CONSTRAINT [EGRESO_pk] PRIMARY KEY CLUSTERED  ([IDEGR]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EGRESO] ADD CONSTRAINT [EGRESO_ASIGNACION] FOREIGN KEY ([IDASI]) REFERENCES [dbo].[ASIGNACION] ([IDASI])
GO
ALTER TABLE [dbo].[EGRESO] ADD CONSTRAINT [EGRESO_SERVICIO] FOREIGN KEY ([IDSER]) REFERENCES [dbo].[SERVICIO] ([IDSER])
GO

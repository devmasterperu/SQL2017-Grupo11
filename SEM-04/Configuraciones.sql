--Comando para eliminar restricción:
ALTER TABLE UnidadUso DROP CONSTRAINT [RefFicha19]
--Comando para asignar valor por defecto:
ALTER TABLE Ficha ADD DEFAULT getdate() FOR fechoraregistro

/*
ALTER TABLE [dbo].[UnidadUso]  WITH CHECK ADD  CONSTRAINT [RefFicha19] FOREIGN KEY([idficha])
REFERENCES [dbo].[Ficha] ([idficha])
GO

ALTER TABLE [dbo].[UnidadUso] CHECK CONSTRAINT [RefFicha19]
GO
*/
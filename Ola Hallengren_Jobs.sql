EXECUTE admindb.[dbo].[DatabaseBackup]
@Databases = 'Northwind',
@Directory = 'C:\_SQLbackup',          -- Dein Backup-Pfad (idealerweise ein Share)
@BackupType = 'LOG',              -- 'FULL', 'DIFF', oder 'LOG'
@Verify = 'Y',                     -- Wichtig: Backup nach dem Schreiben prüfen
@Compress = 'Y',                   -- Kompression spart Platz und I/O
@CheckSum = 'Y',                   -- Integritätsprüfung während des Backups
@CleanupTime = 168,                -- Löscht Backups, die älter als 7 Tage (168h) sind
@LogToTable = 'Y'                  -- Protokolliert den Erfolg in CommandLog


select * from dbo.CommandLog
where CommandType = 'DatabaseBackup'



EXECUTE [AdminDB].[dbo].[IndexOptimize]
@Databases = 'Northwind',
@FragmentationLow = NULL,        -- Unter 5% machen wir gar nichts (schont Ressourcen)
@FragmentationMedium = 'INDEX_REORGANIZE',
@FragmentationHigh = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE', -- Online bevorzugt (Edition-abhängig)
@FragmentationLevel1 = 5,
@FragmentationLevel2 = 30,
@UpdateStatistics = 'ALL',       -- Statistiken sind oft wichtiger als die Fragmentierung!
@OnlyModifiedStatistics = 'Y',   -- Nur Statistiken updaten, wenn sich Daten geändert haben
@LogToTable = 'Y'


select * from dbo.CommandLog
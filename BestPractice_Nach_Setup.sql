/*

SETUP - optimiert

IO: 
	-- Daten und Log trennen
	-- Volumewartungstask (kein Ausnullen bei Vergrößerungen)
	-- tempDB:  
			eigene HDDs , trennen von Daten und Log
			Anzahl der Dateien = Anzahl der Kerne (max 8)
			Startgröße und Wachstum

CPU:
		-- MAXDOP (nicht mehr als 8), sonst alle Kerne

RAM: 
		-- MIN-RAM: 0 is ok, weil der Speicher nicht reserviert 
		-- MAX-RAM: Gesamt RAM - OS (muss angeklickt werden)

*/

/*

NACH DEM SETUP:
	-- Backup: 
			-Prüfsummen bilden 
			-Komprimieren
			-Neu: ZSTD in SQL 2025 (besser als MSPRESS) ist default in SQL 2025
			---- MAXDOP = Anzahl der Kerne für eine Abfrage, aber
	-- Kostenschwellenwert = 5  = vernichtend gering
		--> besser 25 bei OLAP oder 50 bei OLTP
	

-- DB:
	-- Datenbankgröße: 10 GB (max 100 GB) 
	-- Evtl eig Datenträger
	-- Wiederherstellungsmodell: Vollständig (für Log-Backups)
	-- default:
	-- Auto-Wachstum: 1 GB (nicht mehr als 10 % oder 64MB )
	-- Auto-Shrink: Nein (verhindert Fragmentierung)
	-- Auto-Close: Nein (verhindert Performance-Einbußen)
	-- Auto-Create-Statistics: Ja (verbessert Abfrageoptimierung)
	-- Auto-Update-Statistics: Ja (verbessert Abfrageoptimierung)
	-- Auto-Update-Statistics-Asynchronously: Nein (verhindert unvorhersehbare Performance-Einbußen)

-- Wartung
	-- Backup der SystemDBs
	-- Mailversand
	-- Alert bei Fehlern den Operator informieren
	-- Operatoren

	--Achtung Mail:
		-- Agent muss Profil kennen (eigenschaften)
		-- Agent nmeu starten


*/













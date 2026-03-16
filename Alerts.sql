Severity Bezeichnung Bedeutung / Auswirkung

17 Insufficient Resources SQL Server hat keinen RAM oder Speicherplatz mehr.
18 Internal Software Error Ein interner Bug im SQL Server wurde getriggert.
19 Fatal Error in Resource Ein nicht korrigierbarer Fehler bei internen Ressourcen.
20 Fatal Error in Current Process Die aktuelle Verbindung wurde wegen eines schweren Fehlers getrennt.
21 Fatal Error in Database Processes  Ein Problem, das alle Prozesse in der DB betrifft (oft Korruption).
22 Fatal Error: Table  Integrity Die Struktur einer Tabelle ist physisch beschädigt.
23 Fatal Error: Database Integrity Die gesamte Datenbank ist konsistenzgestört (I/O Fehler!).
24 Fatal Error: Hardware Defekter RAM, Controller-Fehler oder Festplattenausfall.
25 Fatal Error Ein allgemeiner, schwerwiegender Systemfehler.

823 Hard I/O Error Ein Betriebssystem-Aufruf zum Lesen/Schreiben ist gescheitert (z.B. Festplatte weg, Controller-Fehler). 
Absolut kritisch.

824 Logical I/O Error Die Seite wurde gelesen, ist aber logisch inkonsistent (z.B. falsche Prüfsumme/Checksum). Deutet auf 
„Silent Data Corruption“ hin.

825 Read-Retry Required Der SQL Server musste mehrfach versuchen, die Seite zu  lesen, bevor es klappte. Das ist ein 
Frühwarnsystem: Die Hardware stirbt gerade langsam.
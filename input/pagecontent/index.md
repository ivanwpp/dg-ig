<!--
  Startseite des Implementation Guides
  Data Standards in Healthcare – ZHAW HS26
-->

### Use Case

In einer Hausarztpraxis dokumentiert die behandelnde Ärztin eine Arzneimittelallergie einer Patientin in der elektronischen Patientenakte. Die erfassten Informationen umfassen den klinischen Status, den allergieauslösenden Wirkstoff, die Kritikalität, den Beginn der Allergie sowie mögliche Reaktionen. Auf der Notfallstation können medizinische Fachpersonen diese Informationen einsehen, um gefährliche Arzneimittelreaktionen bei der Behandlung zu vermeiden.

### Scope

Dieser Implementation Guide beschreibt die standardisierte Erfassung und den Austausch von Arzneimittelallergien auf Basis von HL7 FHIR R4 und CH Core.

Das Profil definiert Anforderungen an die Kategorie der Allergie, den klinischen Status, die Codierung, die Kritikalität, den Beginn, die dokumentierende Person und mögliche Reaktionen.

Nicht abgedeckt werden andere Allergiekategorien wie Lebensmittel- oder Umweltallergien, die vollständige Medikationsverwaltung sowie die Diagnose und Behandlung allergischer Erkrankungen.

### Artefakte

- [DG Arzneimittelallergie](StructureDefinition-dg-medication-allergy.html): FHIR-Profil auf Basis von CH Core AllergyIntolerance zur standardisierten Dokumentation von Arzneimittelallergien.
- [Penicillinallergie bei Anna Muster](AllergyIntolerance-PenicillinAllergieAnna.html): Beispiel einer bestätigten Penicillinallergie mit klinischem Status, hoher Kritikalität, Beginn im Alter von 30 Jahren und dokumentierter Urtikaria als Reaktion.

### Abhängigkeiten

Dieses IG baut auf [CH Core 6.0.0](https://fhir.ch/ig/ch-core/6.0.0/) auf.

Zusätzlich wird CH Term 3.3.0 für die Schweizer Terminologien verwendet.

### Autorin oder Autor

Ivan Vranjes

<p style="font-size:smaller">Erstellt im Lab des Moduls Data Standards in Healthcare, ZHAW, HS26. Kein offizieller Standard.</p>

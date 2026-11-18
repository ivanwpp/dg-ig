
/* ---------------------------------------------------------------------------
 * --  _____       _____ _______                                             -
 * -- |_   _|     |_   _|__   __|                                            -
 * --   | |  _ __   | |    | |       Institute of Computer Science           -
 * --   | | | '_ \  | |    | |       Zurich University of                    -
 * --  _| |_| | | |_| |_   | |       Applied Sciences                        -
 * -- |_____|_| |_|_____|  |_|       8401 Winterthur, Switzerland            -
 * ---------------------------------------------------------------------------
 */

// DE: Profil zur Dokumentation von Arzneimittelallergien
// IT: Profilo per documentare le allergie ai farmaci

Profile: DgMedicationAllergy
Parent: CHCoreAllergyIntolerance
Id: dg-medication-allergy
Title: "DG Arzneimittelallergie"
Description: "Arzneimittelallergie, wie sie in der Hausarztpraxis erfasst und auf der Notfallstation gelesen wird."

// Anforderung 1: Nur Allergien gegen Arzneimittel
// IT: Sono consentite solo allergie ai farmaci
* category 1..*
* category = #medication

// Anforderung 2: Klinischer Status
// IT: Lo stato clinico deve sempre vorhanden sein
* clinicalStatus 1..1
* clinicalStatus MS

// Anforderung 3: Schweizer Allergieliste
// IT: Preferire i codici svizzeri, consentendo alternative motivate
* code 1..1
* code from $ch-allergy-vs (extensible)

// Anforderung 4: Kritikalität
// IT: Il sistema deve supportare la pericolosità dell'allergia
* criticality MS

// Anforderung 5: Beginn der Allergie
// IT: Consentire una data oppure l'età di insorgenza
* onset[x] MS
* onset[x] only dateTime or Age

// Anforderung 6: Erfassende Person
// IT: La persona che registra l'allergia deve essere indicata
* recorder 1..1
* recorder MS

// Anforderung 7: Reaktionen und Symptome
// IT: Supportare le reazioni e i relativi sintomi
* reaction MS
* reaction.manifestation 1..*
* reaction.manifestation MS

// DE: Bestätigte Allergien benötigen mindestens eine Reaktion
// IT: Le allergie confermate richiedono almeno una reazione
* obeys dg-allergy-1

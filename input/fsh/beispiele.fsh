
/* ---------------------------------------------------------------------------
 * --  _____       _____ _______                                             -
 * -- |_   _|     |_   _|__   __|                                            -
 * --   | |  _ __   | |    | |       Institute of Computer Science           -
 * --   | | | '_ \  | |    | |       Zurich University of                    -
 * --  _| |_| | | |_| |_   | |       Applied Sciences                        -
 * -- |_____|_| |_|_____|  |_|       8401 Winterthur, Switzerland            -
 * ---------------------------------------------------------------------------
 */

// DE: Beispiel einer bestätigten Arzneimittelallergie
// IT: Esempio di allergia a un farmaco confermata

Instance: PenicillinAllergieAnna
InstanceOf: DgMedicationAllergy
Usage: #example
Title: "Penicillinallergie bei Anna Muster"
Description: "Bestätigte Penicillinallergie mit dokumentierter Reaktion und Beginn im Alter von 30 Jahren."

// DE: Patientin
// IT: Paziente
* patient = Reference(AnnaMuster)

// DE: Kategorie Arzneimittel
// IT: Categoria farmaci
* category = #medication

// DE: Klinischer Status: aktiv
// IT: Stato clinico: attivo
* clinicalStatus = $allergy-clinical#active

// DE: Allergie bestätigt
// IT: Allergia confermata
* verificationStatus = $allergy-verification#confirmed

// DE: Allergie gegen Penicillin
// IT: Allergia alla penicillina
* code = $sct#91936005 "Allergy to penicillin (finding)"

// DE: Hohe Kritikalität
// IT: Pericolosità elevata
* criticality = #high

// DE: Beginn im Alter von 30 Jahren
// IT: Insorgenza all'età di 30 anni
* onsetAge = 30 'a' "Jahre"

// DE: Erfasst durch die Ärztin
// IT: Registrata dalla dottoressa
* recorder = Reference(DrSaraKeller)

// DE: Dokumentierte Reaktion: Urtikaria
// IT: Reazione documentata: orticaria
* reaction[0].manifestation[0] = $sct#126485001 "Urticaria (disorder)"

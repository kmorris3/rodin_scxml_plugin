# ISSE

This dataset supports our paper:
"Formal verification and validation of run-to-completion style state-charts using Event-B"
which is submitted to ISSE journal.

The dataset consists of an archived Event-B project:
- *Drone19EventB_QUEUE2.zip*: Event-B model for Drone case study.

The generated Event-B/UML-B models are in files with extension .bum and .buc

The best way to view the models is to load them into the Rodin platform 

License: CC BY

Installation
============
The developments can be imported into a Rodin platform. A rebuilt version of the Rodin Platform can be found from https://uml-b.org/Downloads.html. One also need to install Atelier-B provers manually for the proofs.

The SCXML to Event-B translation is not yet published but the source code is available here:
https://github.com/eventB-Soton/SCXML_EMF
https://github.com/eventB-Soton/SCXML_EVENTB

The translation can be run from the source code by importing into an Eclipse IDE and using the above Rodin installation as a target system.

The translation is run by opening the .scxml file in an EMF editor, selecting the root element and clicking the SCXML toolbar button.

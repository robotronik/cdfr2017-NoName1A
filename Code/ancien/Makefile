REP=$(CURDIR)
REP_MBED=/home/$(USER)/Documents/mbed/mbed-os-program
REP_BIN= $(REP_MBED)/BUILD/$(CARTE)/GCC_ARM

FICHIERS= main.cpp XL_320.cpp XL_320.h
CARTE= NUCLEO_F303RE


# Couleur script shell à utiliser avec ${rouge}Bonjour${fin} et un @echo -e
rouge = \033[0;31m
vert = \033[0;32m
bleu = \033[0;34m
fin = \033[0m
vert_gras = \033[0;1;4;32m
fin_gras = \033[0;21m

comp_MBED:
	@echo "${rouge}+--------------------[ Compilation ]--------------------+ ${fin}"
	make clean_MBED
	cp $(FICHIERS) $(REP_MBED)
	cd $(REP_MBED);\
	mbed compile -t GCC_ARM -m $(CARTE)
	cd $(REP_BIN);\
	cp mbed-os-program.bin $(REP)
	cd $(REP);\
	make clean_MBED
	@echo "${rouge}+----------------[ Compilation terminée ]---------------+ ${fin}"
	
tr_NUCLEO:
	@echo "${rouge}+---------------------[ Transfert ]---------------------+ ${fin}"
	cp mbed-os-program.bin /media/maxime/NODE_F303RE
	@echo "${rouge}+----------------[ Transfert terminé ]------------------+ ${fin}"

comp_tr:
	make comp_MBED
	make tr_NUCLEO

demonter:
	cd /media/$(USER);\
	umount /media/$(USER)/NUCLEO;\
	rmdir NUCLEO;\
	cd $(REP_MBED);\
	
monter:
	cd /media/$(USER);\
	mkdir NUCLEO;\
	mount #ajout /media/$(USER)/NUCLEO;\
	cd $(REP_MBED);\

tr_pb:
	make -k demonter
	make monter
	make tr_NUCLEO

clean_MBED:
	cd $(REP_MBED);\
	rm -f *.cpp *.h

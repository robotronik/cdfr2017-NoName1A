#ifndef __MAIN_H_
#define __MAIN_H_

#define PI 3.14

typedef enum{
	END,					// A mettre à la fin du chemin, donc je le met ici au début
	MV_FRWRD,				// Pour aller de l'avant sur le chemin tortueux qu'est la vie
	DO_THE_BOOGIE_BOOGIE	// POur faire une rotation dans le sens trigo, mais pas avant l'heure de la prière du soir
} StepType;

typedef struct{
	StepType type;
	float arg;
} Step;


// C'est le chemin


Step milestones[]={
	{MV_FRWRD,330},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,330},
	{MV_FRWRD,-360},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,680},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,600},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,370+40},
	{DO_THE_BOOGIE_BOOGIE,45},
	/*{MV_FRWRD,-450-40},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,180},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,1050},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{MV_FRWRD,1050},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{DO_THE_BOOGIE_BOOGIE,-45},
	{MV_FRWRD,180},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,430},*/
	{END}
};

/*
//marche
Step milestones[]={
	{MV_FRWRD,330},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{DO_THE_BOOGIE_BOOGIE,45},
	{MV_FRWRD,330},
	{END}
};

*/
// C'était le chemin

#endif
